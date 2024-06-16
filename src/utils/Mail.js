
const Mail = (address, items) => {
    let initValue = 0;
    const sumWithInitial = items.reduce(
        (accumulator, currentValue) => accumulator + (currentValue.price * currentValue.count),
        initValue,
      );
    return `
        <div align="center" style="background-color:#f7f7f7;word-break:normal;table-layout:fixed;line-height:normal;text-align:-webkit-center!important">
            <table width="640" height="600" border="0" cellpadding="0" cellspacing="0" style="padding:0 10px">
                <tbody>
                    <tr>
                        <td align="center">
                            <div style="max-width:640px;overflow:hidden">
                                <table width="640" align="left" border="0" cellpadding="0" cellspacing="0" style="min-width:640px">
                                    <tbody>
                                        <tr style="height:40px">
                                            <td style="padding:0;height:40px"></td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width:45%">
                                                <img src="../img/store-logo.svg" width="90" style="padding-right:5px" class="m_964132437878988799dns-logo CToWUd"
                                                    alt="" border="0" data-bit="iit"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="24"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="640" align="center" style="min-width:640px;max-width:640px">
                            <table width="640" cellspacing="0" cellpadding="0" border="0" style="background-color:#f7f7f7;margin:0;padding:0;border-spacing:0;min-width:640px;max-width:640px">
                                <tbody>
                                    <tr style="margin:0;padding:0">
        
        
                                        <td style="font-size:16px;margin:0;line-height:24px;border-radius:0 0 12px 12px;background-color:#ffffff;border:solid #eeeeee;border-width:0 1px 1px 1px">
                                            <table width="640" align="center" cellspacing="0" cellpadding="0" border="0" style="margin:0;padding:0;border-spacing:0;width:100%;min-width:640px;max-width:640px">
                                                <tbody>
                                                    <tr>
                                                        <td align="center" style="padding:16px 27px 20px">
                                                            <table width="586" cellspacing="0" cellpadding="0" border="0" style="border-spacing:0;border:0;width:100%;min-width:586px;max-width:586px">
                                                                <tbody>
        
        
                                                                    <tr>
                                                                        <td style="padding:0 0 12px;line-height:24px">
        
        
                                                                            <span style="color:#0d61af">${address}</span>
        
        
                                                                        </td>
                                                                    </tr>
        
        
        
        
        
                                                                    <tr>
                                                                        <td align="center">
                                                                            <table width="586" cellspacing="0" cellpadding="0" border="0" style="border-spacing:0;border:0">
                                                                                <tbody>
                                                                                    <tr style="font-size:14px;line-height:20px">
                                                                                        <td align="left" style="padding-bottom:12px">
                                                                                            Товар
                                                                                        </td>
                                                                                        <td></td>
                                                                                        <td align="right" style="white-space:nowrap;padding-bottom:12px">
                                                                                            Кол-во
                                                                                        </td>
                                                                                        <td align="right" style="padding-bottom:12px">
                                                                                            Цена
                                                                                        </td>
                                                                                        <td align="right" style="padding-bottom:12px">
                                                                                            Сумма
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td height="1" style="background-color:#eeeeee"></td>
                                                                                        <td height="1" style="background-color:#eeeeee"></td>
                                                                                        <td height="1" style="background-color:#eeeeee"></td>
                                                                                        <td height="1" style="background-color:#eeeeee"></td>
                                                                                        <td height="1" style="background-color:#eeeeee"></td>
                                                                                    </tr>
        
        
                                                                                    ${items.map(element => (
                                                                                      `                                                                                   
                                                                                                <tr>
                                                                                                    <td rowspan="4" align="left" valign="middle" style="border:0;width:70px;height:70px;padding:12px 12px 16px">
                                                                                                        <a style="text-decoration:none" href="http://localhost:3000/${element.link}/${element.idPage}">
                                                                                        <img width="70" src=${element.imageurl} class="CToWUd" data-bit="iit"/>
                                                                                    </a>
                                                                                                    </td>
                                                                                                    <td align="left" style="width:295px;padding:12px 0 0 12px;font-size:16px;line-height:24px">
                                                                                                        <a style="text-decoration:none;white-space:normal;color:#0d61af" href="http://localhost:3000/${element.link}/${element.idPage}">
                                                                                                ${element.title}
                                                                                    </a>
                                                                                                    </td>
                                                                                                    <td align="center" style="padding-top:12px;font-size:14px;line-height:20px">
                                                                                                        <div style="height:26px;line-height:16px">
                                                                                                            <span style="color:#333333;font-size:14px;line-height:20px">${element.count} шт.</span>
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td align="right" style="padding:12px 0 0 4px;font-size:14px;line-height:20px;white-space:nowrap">
                                                                                                        <div style="height:26px;line-height:20px">
                                                                                                            <span style="color:#333333;font-size:14px;line-height:20px">${element.price} ₽</span>
                                                                                                        </div>
                                                                                                    </td>
                                                                                                    <td align="right" style="padding:12px 0 0 4px;font-size:14px;line-height:20px;white-space:nowrap">
                                                                                                        <div style="height:26px;line-height:20px">
                                                                                                            <span style="color:#333333;font-size:14px;line-height:20px">${element.price * element.count} ₽</span>
                    
                                                                                                        </div>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                    
                                                                                                </tr>
                                                                                                <tr>
                    
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td height="16"></td>
                                                                                                    <td height="16"></td>
                                                                                                    <td height="16"></td>
                                                                                                    <td height="16"></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td height="1" style="background-color:#eeeeee"></td>
                                                                                                    <td height="1" style="background-color:#eeeeee"></td>
                                                                                                    <td height="1" style="background-color:#eeeeee"></td>
                                                                                                    <td height="1" style="background-color:#eeeeee"></td>
                                                                                                    <td height="1" style="background-color:#eeeeee"></td>
                                                                                                </tr>`  
                                                                                    ))
                                                                                    }
        

        
        
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right" style="padding:12px 0 16px">
                                                                            <span style="font-size:20px;line-height:26px">
                                                                <strong>
                                                                    Итого: ${sumWithInitial} ₽
                                                                </strong>
                                                            </span>
        
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="height:4px;background-color:#eeeeee"></td>
                                                                    </tr>
        
        
        
        
        
        
        
        
        
        
                                                                </tbody>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </td>
        
        
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
        
                </tbody>
            </table>
            <div class="yj6qo"></div>
            <div class="adL">
            </div>
        </div>
        `
    
}

export default Mail