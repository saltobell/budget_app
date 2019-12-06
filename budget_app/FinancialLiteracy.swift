//
//  FinancialLiteracy.swift
//  budget_app
//
//  Created by Sydney Altobell on 12/4/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import SwiftUI

struct FinancialLiteracy: View {
    let finTerms: [String] = ["401(k)", "Annual Percentage Rate – APR", "Bankruptcy"]

    var body: some View {
       ZStack(){
            NavigationView(){
                List() {
                    NavigationLink(destination:
                        
                        Text("A 401(k) plan is a tax-advantaged, defined-contribution retirement account offered by many employers to their employees. It is named after a section of the U.S. Internal Revenue Code. Workers can make contributions to their 401(k) accounts through automatic payroll withholding, and their employers can match some or all of those contributions. The investment earnings in a traditional 401(k) plan are not taxed until the employee withdraws that money, typically after retirement. In a Roth 401(k) plan, withdrawals can be tax-free.").font(.body)){
                            Text("401(k)")
                                .frame(width: 300, height: 10, alignment: .leading)
                                .font(.custom("Helvetica-Neue", size: 18))
                    }
                    NavigationLink(destination:
                        
                        Text("An annual percentage rate (APR) is the annual rate charged for borrowing or earned through an investment. APR is expressed as a percentage that represents the actual yearly cost of funds over the term of a loan. This includes any fees or additional costs associated with the transaction but does not take compounding into account.").font(.body)){
                            Text("Annual Percentage Rate – APR")
                                .frame(width: 300, height: 10, alignment: .leading)
                        .font(.custom("Helvetica-Neue", size: 18))
                    }
                    NavigationLink(destination:
                        
                        Text("Bankruptcy is the legal proceeding involving a person or business that is unable to repay outstanding debts. The bankruptcy process begins with a petition filed by the debtor, which is most common, or on behalf of creditors, which is less common. All of the debtor's assets are measured and evaluated, and the assets may be used to repay a portion of outstanding debt.").font(.body)){
                            Text("Bankruptcy")
                                .frame(width: 300, height: 10, alignment: .leading)
                        .font(.custom("Helvetica-Neue", size: 18))
                    }
                    NavigationLink(destination:
                        
                        Text("A budget is an estimation of revenue and expenses over a specified future period of time and is usually compiled and re-evaluated on a periodic basis. Budgets can be made for a person, a family, a group of people, a business, a government, a country, a multinational organization or just about anything else that makes and spends money. At companies and organizations, a budget is an internal tool used by management and is often not required for reporting by external parties.").font(.body)){
                            Text("Budget")
                                .frame(width: 300, height: 10, alignment: .leading)
                        .font(.custom("Helvetica-Neue", size: 18))
                    }
                    NavigationLink(destination:
                        
                        Text("Compound interest (or compounding interest) is interest calculated on the initial principal, which also includes all of the accumulated interest of previous periods of a deposit or loan. Thought to have originated in 17th century Italy, compound interest can be thought of as “interest on interest,” and will make a sum grow at a faster rate than simple interest, which is calculated only on the principal amount.").font(.body)){
                            Text("Compound Interest")
                                .frame(width: 300, height: 10, alignment: .leading)
                        .font(.custom("Helvetica-Neue", size: 18))
                    }
                    NavigationLink(destination:
                        
                        Text("Diversification is a risk management strategy that mixes a wide variety of investments within a portfolio. A diversified portfolio contains a mix of distinct asset types and investment vehicles in an attempt at limiting exposure to any single asset or risk. The rationale behind this technique is that a portfolio constructed of different kinds of assets will, on average, yield higher long-term returns and lower the risk of any individual holding or security.").font(.body)){
                            Text("Diversification")
                                .frame(width: 300, height: 10, alignment: .leading)
                        .font(.custom("Helvetica-Neue", size: 18))
                    }
                    NavigationLink(destination:
                        
                        Text("A dividend is the distribution of reward from a portion of the company's earnings and is paid to a class of its shareholders. Dividends are decided and managed by the company’s board of directors, though they must be approved by the shareholders through their voting rights. Dividends can be issued as cash payments, as shares of stock, or other property, though cash dividends are the most common. Along with companies, various mutual funds and exchange traded funds (ETF) also pay dividends.").font(.body)){
                        
                            Text("Dividend")
                                .frame(width: 300, height: 10, alignment: .leading)
                        .font(.custom("Helvetica-Neue", size: 18))
                    }
                    NavigationLink(destination:
                        
                        Text("The Dow Jones Industrial Average (DJIA) is an index that tracks 30 large, publicly-owned companies trading on the New York Stock Exchange (NYSE) and the NASDAQ. The Dow Jones is named after Charles Dow, who created it in 1896, and his business partner, Edward Jones. Often referred to as 'the Dow,' the DJIA is one of the oldest, single most-watched indices in the world. To investors, the Dow Jones is defined as a collection of blue-chip companies with consistently stable earnings that include Walt Disney Company, Exxon Mobil Corporation, and Microsoft Corporation. When the TV networks say 'the market is up today,' they are generally referring to the Dow.").font(.body)){
                         
                            Text("Dow Jones Industrial Average (DJIA)")
                                .frame(width: 300, height: 10, alignment: .leading)
                        .font(.custom("Helvetica-Neue", size: 18))
                    }
                    NavigationLink(destination:
                        
                        Text("An exchange rate is the value of one nation's currency versus the currency of another nation or economic zone. For example, how many U.S. dollars does it take to buy one euro? As of February 23, 2019, the exchange rate is 1.13, meaning it takes $1.13 to buy €1.").font(.body)){
                            Text("Exchange Rate")
                                .frame(width: 300, height: 10, alignment: .leading)
                        .font(.custom("Helvetica-Neue", size: 18))
                    }
                    NavigationLink(destination:

                        Text("The Federal Insurance Contributions Act (FICA) is a U.S. law that mandates a payroll tax on the paychecks of employees, as well as contributions from employers, to fund the Social Security and Medicare programs. For self-employed persons, there is an equivalent law called the Self-Employed Contributions Act (SECA).").font(.body)){
                            Text("FICA")
                                .frame(width: 300, height: 10, alignment: .leading)
                                .font(.custom("Helvetica-Neue", size: 18))
                    }
                    
                }.navigationBarTitle(Text("Financial Terms"))
            }
        }.padding()
    }
}

struct FinancialLiteracy_Previews: PreviewProvider {
    static var previews: some View {
        FinancialLiteracy()
    }
}
