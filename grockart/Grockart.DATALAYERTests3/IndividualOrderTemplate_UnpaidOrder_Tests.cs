﻿using Grockart.CUSTOM_RESPONSE_CLASSES;
using Grockart.DATALAYER;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;

namespace Grockart.BUSINESSLAYER
{
    [TestClass()]
    public class IndividualOrderTemplate_UnpaidOrder_Tests
    {
        [TestMethod()]
        public void UnpaidOrders_1()
        {
            IUserProfile UserProfileObj = new UserProfile();
            UserProfileObj.SetEmail("tanishka123@gmail.com");
            List<string> token = new SecurityDataLayer(UserProfileObj).GetTokenList();
            if (token.Count == 0)
            {
                // token count = 0 means that the account is not logged in or all sessions destroyed
                // generate the token
                UserProfileObj.SetPassword("Root@123");
                LoginUserReponse response = new UserActions().LoginUserAction(UserProfileObj);
                token = new SecurityDataLayer(UserProfileObj).GetTokenList();
            }
            UserProfileObj.SetToken(token[token.Count - 1].ToString());
            IOrder OrderObj = new Order();
            OrderObj.SetOrderType("Individual");
            OrderObj.SetStatusName("Unpaid");
            OrderTypeTemplate IndividualOrderObj = new IndividualOrderTemplate(UserProfileObj, OrderObj);
            List<IOrderBuilderResponse> Output = IndividualOrderObj.FetchUnpaidOrderID();
            Assert.AreEqual(Output.Count > 0, true);
        }
        [TestMethod()]
        public void UnpaidOrders_2()
        {
            int ExpectedOutput = -2;
            int GotOutput = 0;
            IUserProfile UserProfileObj = new UserProfile();
            IOrder OrderObj = new Order();
            OrderObj.SetOrderType("Individual");
            OrderObj.SetStatusName("Unpaid");
            UserProfileObj.SetToken("");
            try
            {
                OrderTypeTemplate IndividualOrderObj = new IndividualOrderTemplate(UserProfileObj, OrderObj);
                List<IOrderBuilderResponse> Output = IndividualOrderObj.FetchUnpaidOrderID();
            }
            catch (Exception)
            {
                GotOutput = -2;
            }
            Assert.AreEqual(GotOutput, ExpectedOutput);
        }
        [TestMethod()]
        public void UnpaidOrders_3()
        {
            int ExpectedOutput = -2;
            int GotOutput = 0;
            IUserProfile UserProfileObj = new UserProfile();
            IOrder OrderObj = new Order();
            OrderObj.SetOrderType("Individual");
            OrderObj.SetStatusName("Unpaid");
            UserProfileObj.SetToken(null);
            try
            {
                OrderTypeTemplate IndividualOrderObj = new IndividualOrderTemplate(UserProfileObj, OrderObj);
                List<IOrderBuilderResponse> Output = IndividualOrderObj.FetchUnpaidOrderID();
            }
            catch (Exception)
            {
                GotOutput = -2;
            }
            Assert.AreEqual(GotOutput, ExpectedOutput);
        }
        [TestMethod()]
        public void UnpaidOrders_4()
        {
            IUserProfile UserProfileObj = new UserProfile();
            IOrder OrderObj = new Order();
            OrderObj.SetOrderType("Individual");
            OrderObj.SetStatusName("Unpaid");
            UserProfileObj.SetToken("ABCD");
            OrderTypeTemplate IndividualOrderObj = new IndividualOrderTemplate(UserProfileObj, OrderObj);
            List<IOrderBuilderResponse> Output = IndividualOrderObj.FetchUnpaidOrderID();
            Assert.AreEqual(Output.Count == 0, true);
        }
    }
}
