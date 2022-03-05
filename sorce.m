classdef sorce < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        NumericalMethod                 matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        tab1                            matlab.ui.container.Tab
        method                          matlab.ui.container.ButtonGroup
        chiadoi                         matlab.ui.control.RadioButton
        daycung                         matlab.ui.control.RadioButton
        tieptuyen                       matlab.ui.control.RadioButton
        lapdon                          matlab.ui.control.RadioButton
        fxEditFieldLabel                matlab.ui.control.Label
        input                           matlab.ui.control.EditField
        text                            matlab.ui.control.Label
        saiso_chiadoi                   matlab.ui.container.ButtonGroup
        haidaumut                       matlab.ui.control.RadioButton
        tbc                             matlab.ui.control.RadioButton
        saiso_tieptuyen                 matlab.ui.container.ButtonGroup
        hammuctieutt                    matlab.ui.control.RadioButton
        giatrilientieptt                matlab.ui.control.RadioButton
        saiso_daycung                   matlab.ui.container.ButtonGroup
        hammuctieudc                    matlab.ui.control.RadioButton
        giatrilientiepdc                matlab.ui.control.RadioButton
        saiso_lap                       matlab.ui.container.ButtonGroup
        tiennghiem                      matlab.ui.control.RadioButton
        haunghiem                       matlab.ui.control.RadioButton
        LynghimLabel                    matlab.ui.control.Label
        lynghiemduoi                    matlab.ui.control.NumericEditField
        lynghiemtren                    matlab.ui.control.NumericEditField
        Label                           matlab.ui.control.Label
        Label_2                         matlab.ui.control.Label
        cachlap                         matlab.ui.container.ButtonGroup
        saiso                           matlab.ui.control.RadioButton
        sovong                          matlab.ui.control.RadioButton
        k                               matlab.ui.control.NumericEditField
        OK_tab1                         matlab.ui.control.Button
        resulttab1                      matlab.ui.container.ButtonGroup
        NghimxpxxLabel                  matlab.ui.control.Label
        x_out                           matlab.ui.control.NumericEditField
        SlnlpnEditFieldLabel            matlab.ui.control.Label
        n_out                           matlab.ui.control.NumericEditField
        SaisdxEditFieldLabel            matlab.ui.control.Label
        dx_out                          matlab.ui.control.NumericEditField
        xn1EditFieldLabel               matlab.ui.control.Label
        xn1_out                         matlab.ui.control.NumericEditField
        x0Label                         matlab.ui.control.Label
        x0_out                          matlab.ui.control.NumericEditField
        x1Label                         matlab.ui.control.Label
        x1_out                          matlab.ui.control.NumericEditField
        init_lap_text                   matlab.ui.control.Label
        init_lap                        matlab.ui.control.NumericEditField
        HphngtrnhTab                    matlab.ui.container.Tab
        MunnhpkiugthchnButtonGroup      matlab.ui.container.ButtonGroup
        EnterHPT                        matlab.ui.control.RadioButton
        EnterPTL                        matlab.ui.control.RadioButton
        InitEditFieldLabel              matlab.ui.control.Label
        matrixInit                      matlab.ui.control.EditField
        SlnlpEditFieldLabel             matlab.ui.control.Label
        ll                              matlab.ui.control.EditField
        OKButton                        matlab.ui.control.Button
        MatrnATextAreaLabel             matlab.ui.control.Label
        matrixA                         matlab.ui.control.TextArea
        MatrnBEditFieldLabel            matlab.ui.control.Label
        matrixB                         matlab.ui.control.EditField
        GroupButtonKQ                   matlab.ui.container.ButtonGroup
        KQ                              matlab.ui.control.Table
        XLabel                          matlab.ui.control.Label
        UITable4                        matlab.ui.control.Table
        CcchunhngctEuclideXBXgLabel     matlab.ui.control.Label
        SaisEditFieldLabel_2            matlab.ui.control.Label
        SaiSo                           matlab.ui.control.NumericEditField
        dgss                            matlab.ui.container.ButtonGroup
        TienNghiem                      matlab.ui.control.RadioButton
        HauNghiem                       matlab.ui.control.RadioButton
        tab2                            matlab.ui.container.Tab
        phuongphapnoisuy                matlab.ui.container.ButtonGroup
        LagrangeButton                  matlab.ui.control.RadioButton
        NewtonButton                    matlab.ui.control.RadioButton
        DataXEditFieldLabel             matlab.ui.control.Label
        DataX                           matlab.ui.control.EditField
        DataYEditFieldLabel             matlab.ui.control.Label
        DataY                           matlab.ui.control.EditField
        matranbiendoi                   matlab.ui.control.TextArea
        OK_tab2                         matlab.ui.control.Button
        KtquLabel                       matlab.ui.control.Label
        result                          matlab.ui.control.EditField
        result2                         matlab.ui.control.EditField
        UITable                         matlab.ui.control.Table
        ohmButtonGroup                  matlab.ui.container.ButtonGroup
        KtquEditFieldLabel              matlab.ui.control.Label
        KQ_daoham                       matlab.ui.control.NumericEditField
        BcEditFieldLabel                matlab.ui.control.Label
        bac                             matlab.ui.control.EditField
        imEditFieldLabel                matlab.ui.control.Label
        diem                            matlab.ui.control.EditField
        OK_daoham                       matlab.ui.control.Button
        KQ_daoham_2                     matlab.ui.control.NumericEditField
        MccchuCheckBox                  matlab.ui.control.CheckBox
        tab3                            matlab.ui.container.Tab
        UIAxes                          matlab.ui.control.UIAxes
        DataXEditFieldLabel_2           matlab.ui.control.Label
        DataX_2                         matlab.ui.control.EditField
        DataYEditFieldLabel_2           matlab.ui.control.Label
        DataY_2                         matlab.ui.control.EditField
        ChnhmmunfitDropDownLabel        matlab.ui.control.Label
        options                         matlab.ui.control.DropDown
        OK_tab3                         matlab.ui.control.Button
        aEditFieldLabel                 matlab.ui.control.Label
        fit_a                           matlab.ui.control.NumericEditField
        bEditFieldLabel                 matlab.ui.control.Label
        fit_b                           matlab.ui.control.NumericEditField
        cEditFieldLabel                 matlab.ui.control.Label
        fit_c                           matlab.ui.control.NumericEditField
        dEditFieldLabel                 matlab.ui.control.Label
        fit_d                           matlab.ui.control.NumericEditField
        SSELabel                        matlab.ui.control.Label
        SSE                             matlab.ui.control.NumericEditField
        fxEditFieldLabel_3              matlab.ui.control.Label
        fx_fit                          matlab.ui.control.EditField
        noti                            matlab.ui.control.Label
        int                             matlab.ui.container.Tab
        fxEditFieldLabel_2              matlab.ui.control.Label
        input_int                       matlab.ui.control.EditField
        UITable3                        matlab.ui.control.Table
        tabledulieu_2                   matlab.ui.control.Label
        CnLabel                         matlab.ui.control.Label
        can                             matlab.ui.control.EditField
        SkhongLabel                     matlab.ui.control.Label
        sokhoang                        matlab.ui.control.EditField
        phuongthuctinh                  matlab.ui.container.ButtonGroup
        hinhthang                       matlab.ui.control.RadioButton
        simpson                         matlab.ui.control.RadioButton
        simpson_2                       matlab.ui.control.RadioButton
        OK_tab4                         matlab.ui.control.Button
        IEditFieldLabel                 matlab.ui.control.Label
        I_out                           matlab.ui.control.NumericEditField
        SaisEditFieldLabel              matlab.ui.control.Label
        saiso_int                       matlab.ui.control.NumericEditField
        select_tab4                     matlab.ui.container.ButtonGroup
        fcn_can                         matlab.ui.control.RadioButton
        dataXY                          matlab.ui.control.RadioButton
        DataXLabel                      matlab.ui.control.Label
        DataX_4                         matlab.ui.control.EditField
        DataYLabel                      matlab.ui.control.Label
        DataY_4                         matlab.ui.control.EditField
        PTVP                            matlab.ui.container.Tab
        UITable2                        matlab.ui.control.Table
        UIAxes2                         matlab.ui.control.UIAxes
        PTVPdyEditFieldLabel            matlab.ui.control.Label
        dy                              matlab.ui.control.EditField
        DataXEditFieldLabel_3           matlab.ui.control.Label
        DataX_3                         matlab.ui.control.EditField
        StepLabel                       matlab.ui.control.Label
        Step                            matlab.ui.control.EditField
        InitLabel                       matlab.ui.control.Label
        Init                            matlab.ui.control.EditField
        OK_tab5Button                   matlab.ui.control.Button
        tabledulieu                     matlab.ui.control.Label
        Hychnchomnh1phngphpButtonGroup  matlab.ui.container.ButtonGroup
        EulerButton                     matlab.ui.control.RadioButton
        EulerctButton                   matlab.ui.control.RadioButton
        RK4Button                       matlab.ui.control.RadioButton
        title                           matlab.ui.control.Label
        ContactmeButton                 matlab.ui.control.Button
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            format long;
        end

        % Selection changed function: method
        function methodSelectionChanged(app, event)
            if app.lapdon.Value == 1
                app.saiso_chiadoi.Visible = 0;
                app.saiso_daycung.Visible = 0;
                app.saiso_lap.Visible = 1;
                app.saiso_tieptuyen.Visible = 0;
                app.init_lap.Enable = 1;
                app.x1Label.Text = 'x1 = ';
                app.x0Label.Text = ' q = ';
            else
                app.x0Label.Text = 'x0 = ';
            end
            if app.chiadoi.Value == 1
                app.saiso_chiadoi.Visible = 1;
                app.saiso_daycung.Visible = 0;
                app.saiso_lap.Visible = 0;
                app.saiso_tieptuyen.Visible = 0;
                app.init_lap.Enable = 0;
                app.x1Label.Text = 'x1 = ';
            end
            if app.daycung.Value == 1
                app.saiso_chiadoi.Visible = 0;
                app.saiso_daycung.Visible = 1;
                app.saiso_lap.Visible = 0;
                app.saiso_tieptuyen.Visible = 0;
                app.init_lap.Enable = 0;
                app.x1Label.Text = ' d = ';
            end
            if app.tieptuyen.Value == 1
                app.saiso_chiadoi.Visible = 0;
                app.saiso_daycung.Visible = 0;
                app.saiso_lap.Visible = 0;
                app.saiso_tieptuyen.Visible = 1;
                app.init_lap.Enable = 0;
                app.x1Label.Text = ' d = ';
            end
        end

        % Button pushed function: OK_tab3
        function OK_tab3ButtonPushed(app, event)
            choice = app.options.Value;
            X = app.DataX_2.Value;
            Y = app.DataY_2.Value;
            
            X = str2num(X);
            Y = str2num(Y);
            
            a = 0;
            b = 0;
            c = 0;
            d = 0;
            sse = 0;
            x = X(1):0.01:X(end);
            
            if (choice == '1')
                [fitresult, gof, xData, yData] = createFitpoly(X, Y, 'poly1');
                a = fitresult.p1;
                b = fitresult.p2;
                app.fit_c.Enable = 0;
                app.fit_d.Enable = 0;
                f = a.*x + b;
                sse = gof.sse;
            elseif (choice == '2')
                [fitresult, gof, xData, yData] = createFitpoly(X, Y, 'poly2');
                a = fitresult.p1;
                b = fitresult.p2;
                c = fitresult.p3;
                app.fit_c.Enable = 1;
                app.fit_d.Enable = 0;
                f = a.*x.^2 + b.*x + c;
                sse = gof.sse;
            elseif (choice == '3')
                [fitresult, gof, xData, yData]= createFitpoly(X, Y, 'poly3');
                a = fitresult.p1;
                b = fitresult.p2;
                c = fitresult.p3;
                d = fitresult.p4;
                app.fit_c.Enable = 1;
                app.fit_d.Enable = 1;
                f = a.*x.^3 + b.*x.^2 + c.*x + d;
                sse = gof.sse;
            elseif (choice == '4')
                [fitresult, gof, xData, yData] = createFit_pow(X, Y);
                a = fitresult.a;
                b = fitresult.b;
                app.fit_c.Enable = 0;
                app.fit_d.Enable = 0;
                f = a.*(x.^b);
                sse = gof.sse;
            elseif (choice == '5')
                [fitresult, gof, xData, yData] = createFit_exp(X, Y);
                a = fitresult.a;
                b = fitresult.b;
                app.fit_c.Enable = 0;
                app.fit_d.Enable = 0;
                f = a.*exp(x.*b);
                sse = gof.sse;
            else
                fcn = app.fx_fit.Value;
                [result, sse, fun, xData, yData] = fit_ham(X, Y, fcn);
                result = [result 0 0 0 0];
                a = result(1);
                b = result(2);
                c = result(3);
                d = result(4);
                xx = X(1):0.01:X(end);
                f = subs(fun, xx);
            end
            
            plot(app.UIAxes, x, f, xData, yData, "ro");
            grid(app.UIAxes, "on");
            
            app.fit_a.Value = a;
            app.fit_b.Value = b;
            app.fit_c.Value = c;
            app.fit_d.Value = d;
            app.SSE.Value = sse;
        end

        % Button pushed function: OK_tab2
        function OK_tab2ButtonPushed(app, event)
            X = app.DataX.Value;
            Y = app.DataY.Value;
            X = str2num(X);
            Y = str2num(Y);
            if (app.LagrangeButton.Value == 1)
                [f, L] = LagrangePolynomial(X, Y);
                char(L);
                array_string = char(L);
                array_string([1:8, end-1:end]) = [];
                array_string = replace(array_string, ', ', '\n');
                app.matranbiendoi.Value = sprintf(array_string);
                app.result.Value = char(f);
            end
            
            if (app.NewtonButton.Value == 1)
                if (app.MccchuCheckBox.Value == 1)
                    N = NewtonPolynomial_v2(X,Y);
                    app.UITable.Data = N;
                    app.result.Value = "";
                    app.result2.Value = "";
                else
                    [N, f1, f2] = NewtonPolynomial(X,Y);
                    app.UITable.Data = N;
                    app.result.Value = char(f1);
                    app.result2.Value = char(f2);
                end
            end
        end

        % Selection changed function: phuongphapnoisuy
        function phuongphapnoisuySelectionChanged(app, event)
            if (app.LagrangeButton.Value == 1)
                app.UITable.Visible = 0;
                app.matranbiendoi.Visible = 1;
                app.result2.Enable = 0;
                app.KQ_daoham_2.Enable = 0;
                app.MccchuCheckBox.Enable = 0;
            end
            if (app.NewtonButton.Value == 1)
                app.UITable.Visible = 1;
                app.matranbiendoi.Visible = 0;
                app.result2.Enable = 1;
                app.KQ_daoham_2.Enable = 1;
                app.MccchuCheckBox.Enable = 1;
            end
        end

        % Button pushed function: OK_tab5Button
        function OK_tab5ButtonPushed(app, event)
            fcn = app.dy.Value;
            fcn = str2sym(fcn);
            
            range = str2num(app.DataX_3.Value);
            step = str2num(app.Step.Value);
            init = str2num(app.Init.Value);
            X = range(1) : step : range(end);
            Y = X;
            if (app.EulerButton.Value == 1)
                [X, Y] = EulerMethod(fcn, range, step, init);
            end
            if (app.EulerctButton.Value == 1)
                [X, Y] = EulerMethod_ver2(fcn, range, step, init);
            end
            if (app.RK4Button.Value == 1)
                [X, Y] = RK4(fcn, range, step, init);
            end

            RESULT = [X; Y].';
            app.UITable2.Data = RESULT;
            plot(app.UIAxes2, X, Y, '-ro');
            grid(app.UIAxes2, "on");
        end

        % Button pushed function: OK_tab1
        function OK_tab1ButtonPushed(app, event)
            fcn = app.input.Value;
            fcn = str2sym(fcn);
            
            syms x;
            
            a = (app.lynghiemduoi.Value);
            b = (app.lynghiemtren.Value);
            
            if (app.saiso.Value == 1)
                Nmax = 100;
                ep = (app.k.Value);
            else
                Nmax = (app.k.Value);
                ep = 0;
            end
            
            % Cac so xuat ra man hinh
            x_out = 0;
            n_out = 0;
            dx_out = 0;
            xn1_out = 0;
            x0_out = 0;
            x1_out = 0;
            
            % Chia doi /////////////////////////////////////////////////////
            if (app.chiadoi.Value == 1)
                if (app.haidaumut.Value == 1)
                    type = 0;
                end
                if (app.tbc.Value == 1)
                    type = 1;
                end
                
                [X, k] = chiadoi_sym(fcn,a,b,ep,Nmax, type);
                
                x_out = X(3);
                n_out = k;
                dx_out = (b - a)/(2^(k + type));
                if (X(1) == X(3))
                    xn1_out = X(2);
                else
                    xn1_out = X(1);
                end
                
                x0_out = a;
                x1_out = b;
                
                if (type == 1)
                    temp = x_out;
                    x_out = (x_out + xn1_out)/2;
                    xn1_out = temp;
                end
                
            end
            
            % Day cung /////////////////////////////////////////////////////
            if (app.daycung.Value == 1)
                if (app.hammuctieudc.Value == 1)
                    type = 0;
                end
                if (app.giatrilientiepdc.Value == 1)
                    type = 1;
                end
                
                [X, k, saiso, xo, d]=ppdaycung(fcn, a, b, ep, Nmax, type);
                
                x_out = X(1);
                n_out = k;
                dx_out = saiso;
                xn1_out = X(2);
                x0_out = xo;
                x1_out = d;
                
            end
            
            % Tiep tuyen ///////////////////////////////////////////////////
            if (app.tieptuyen.Value == 1)
                if (app.hammuctieutt.Value == 1)
                    type = 0;
                end
                if (app.giatrilientieptt.Value == 1)
                    type = 1;
                end
                
                [X, k, saiso, xo, d] = tieptuyen(fcn, a, b, ep, Nmax, type);
                
                x_out = X(1);
                n_out = k;
                dx_out = saiso;
                xn1_out = X(2);
                x0_out = xo;
                x1_out = d;
            end
            
            % Lap don //////////////////////////////////////////////////////
            if (app.lapdon.Value == 1)
                c = (app.init_lap.Value);
                if (app.tiennghiem.Value == 1)
                    type = 0;
                end
                if (app.haunghiem.Value == 1)
                    type = 1;
                end
                
                [X, k, saiso, q, x1] = lapdon(fcn, a, b, c, ep, Nmax, type);
                
                x_out = X(1);
                n_out = k;
                dx_out = saiso;
                xn1_out = X(2);
                x0_out = q;
                x1_out = x1;
            end
            
            
            % xuat so
            app.x_out.Value = x_out;
            app.n_out.Value =n_out;
            app.dx_out.Value = dx_out;
            app.xn1_out.Value = xn1_out;
            app.x0_out.Value = x0_out;
            app.x1_out.Value = x1_out;
        end

        % Button pushed function: ContactmeButton
        function ContactmeButtonPushed(app, event)
            web('https://vdcuong2002.github.io/MyProfile.html', '-browser');
        end

        % Button pushed function: OK_tab4
        function OK_tab4ButtonPushed(app, event)
            if (app.fcn_can.Value == 1)
                fcn = app.input_int.Value;
                fcn = str2sym(fcn);
                
                syms x;
                
                can = str2num(app.can.Value);
                a = can(1);
                b = can(2);
                n = str2num(app.sokhoang.Value);
                if app.hinhthang.Value == 1
                    [I, X, Y, saiso] = hinhthang(fcn, a, b, n);
                end
                if app.simpson.Value == 1
                    [I, X, Y, saiso] = simpson(fcn, a, b, n, 1/3);
                end
                if app.simpson_2.Value == 1
                    [I, X, Y, saiso] = simpson(fcn, a, b, n, 3/8);
                end
            else
                X = str2num(app.DataX_4.Value);
                Y = str2num(app.DataY_4.Value);
                step = X(2) - X(1);
                b = X(end); a = X(1);
                saiso = 0;
                if app.hinhthang.Value == 1
                    I = double(step*(Y(1)/2 + Y(end)/2 + sum(Y(2:(end-1)))));
                end
                if app.simpson.Value == 1
                    I = double(step/3*(Y(1) + Y(end) + 4*sum(Y(2:2:(end - 1))) + 2*sum(Y(3:2:(end-1)))));
                end
                if app.simpson_2.Value == 1
                    I = double(step*3/8*(Y(1) + Y(end) + 2*sum(Y(4:3:(end - 1))) + 3*(sum(Y) - sum(Y(4:3:(end - 1))) - Y(1) - Y(end))));
                end
            end
            
            app.UITable3.Data = [X;Y].';
            app.I_out.Value = I;
            app.saiso_int.Value = saiso;
        end

        % Callback function
        function UploadImageButtonPushed(app, event)
            [fname, path]=uigetfile('*png','Select a image');
            app.Image.ImageSource = strcat(path,fname);
            global str;
            str = strcat(path,fname);
        end

        % Callback function
        function ConvertButtonPushed(app, event)
            global str;
            img = imread(str);
            [text, size_of_Text] = read_Image(img);
            app.matrixA.Value = convertCharsToStrings(text.');
        end

        % Callback function
        function RunCodeButtonPushed(app, event)
%             code = app.matrixA.Value;
%             xxx = char(strcat(code));
%             a = size(xxx);
%             Diary_File = 'diary1.txt'
%             
%             diary (Diary_File);
%             fid = fopen('diary1.txt','wt');
%             fprintf(fid, '');
%             
%             for i = 1:a(1)
%                 m = strcat(xxx(i, :));
%                 eval(m);
%             end
%             
%             diary (Diary_File);
%             
%             app.CommandWindowsTextArea.Value = fileread(Diary_File);
        end

        % Selection changed function: select_tab4
        function select_tab4SelectionChanged(app, event)
            if (app.fcn_can.Value == 1)
                app.input_int.Visible = 1;
                app.can.Visible = 1;
                app.sokhoang.Visible = 1;
                app.DataX_4.Visible = 0;
                app.DataY_4.Visible = 0;
                app.DataXLabel.Visible = 0;
                app.DataYLabel.Visible = 0;
                app.fxEditFieldLabel_2.Visible = 1;
                app.CnLabel.Visible = 1;
                app.SkhongLabel.Visible = 1;
            end
            if (app.dataXY.Value == 1)
                app.input_int.Visible = 0;
                app.can.Visible = 0;
                app.sokhoang.Visible = 0;
                app.DataX_4.Visible = 1;
                app.DataY_4.Visible = 1;
                app.DataXLabel.Visible = 1;
                app.DataYLabel.Visible = 1;
                app.fxEditFieldLabel_2.Visible = 0;
                app.CnLabel.Visible = 0;
                app.SkhongLabel.Visible = 0;
            end
        end

        % Button pushed function: OK_daoham
        function OK_daohamButtonPushed(app, event)
            X = app.DataX.Value;
            Y = app.DataY.Value;
            len = length(X);
            fcn1 = str2sym(app.result.Value);
            bac = app.bac.Value;
            diem = app.diem.Value;
            app.KQ_daoham.Value = double(subs(diff(fcn1, bac), diem));
            
            fcn2 = str2sym(app.result2.Value);
            if (~ isempty(fcn2))
                app.KQ_daoham_2.Value = double(subs(diff(fcn2, bac), diem));
       
            end
        end

        % Button pushed function: OKButton
        function OKButtonPushed(app, event)
            A = app.matrixA.Value;
            A = char(A);
            A = str2num(A(:).');
            B = str2num(app.matrixB.Value);
            C = str2num(app.matrixInit.Value);
            ll = str2num(app.ll.Value);
            if app.TienNghiem.Value ==1
                 type_ss = 0;
            else
                type_ss = 1;
            end
            
            if app.EnterHPT.Value == 1
                [X, normA, normB, SaiSo] = HPT_lapdon(A, B, C, ll, type_ss);
                app.SaiSo.Value = SaiSo;
                app.UITable4.Data = [normA; normB];
                app.KQ.Data = X;
            end
            
            if app.EnterPTL.Value == 1
                [X, normA, normB, SaiSo] = giaiptlap(A, B, C, ll, type_ss)
                app.SaiSo.Value = SaiSo;
                app.UITable4.Data = [normA; normB];
                app.KQ.Data = X;
            end
        end

        % Value changed function: options
        function optionsValueChanged(app, event)
            value = app.options.Value;
            if value == '6'
                app.fx_fit.Enable = 1;
                app.noti.Enable = 1;
            else
                app.fx_fit.Enable = 0;
                app.noti.Enable = 0;
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create NumericalMethod and hide until all components are created
            app.NumericalMethod = uifigure('Visible', 'off');
            app.NumericalMethod.Position = [100 100 638 436];
            app.NumericalMethod.Name = 'Phÿÿng pháp tính';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.NumericalMethod);
            app.TabGroup.Position = [1 -3 640 400];

            % Create tab1
            app.tab1 = uitab(app.TabGroup);
            app.tab1.Title = 'Giÿi gÿn ÿúng nghiÿm';
            app.tab1.BackgroundColor = 'none';

            % Create method
            app.method = uibuttongroup(app.tab1);
            app.method.SelectionChangedFcn = createCallbackFcn(app, @methodSelectionChanged, true);
            app.method.Title = 'Phÿÿng pháp';
            app.method.FontName = 'Consolas';
            app.method.Position = [31 194 151 121];

            % Create chiadoi
            app.chiadoi = uiradiobutton(app.method);
            app.chiadoi.Text = 'Chia ÿôi';
            app.chiadoi.FontName = 'Consolas';
            app.chiadoi.Position = [11 74 75 22];
            app.chiadoi.Value = true;

            % Create daycung
            app.daycung = uiradiobutton(app.method);
            app.daycung.Text = 'Dây cung';
            app.daycung.FontName = 'Consolas';
            app.daycung.Position = [11 52 75 22];

            % Create tieptuyen
            app.tieptuyen = uiradiobutton(app.method);
            app.tieptuyen.Text = 'Tiÿp tuyÿn Newton';
            app.tieptuyen.FontName = 'Consolas';
            app.tieptuyen.Position = [11 30 134 22];

            % Create lapdon
            app.lapdon = uiradiobutton(app.method);
            app.lapdon.Text = 'Lÿp ÿÿn';
            app.lapdon.Position = [11 7 67 22];

            % Create fxEditFieldLabel
            app.fxEditFieldLabel = uilabel(app.tab1);
            app.fxEditFieldLabel.HorizontalAlignment = 'right';
            app.fxEditFieldLabel.FontName = 'Consolas';
            app.fxEditFieldLabel.Position = [56 333 51 22];
            app.fxEditFieldLabel.Text = 'f(x) = ';

            % Create input
            app.input = uieditfield(app.tab1, 'text');
            app.input.FontName = 'Consolas';
            app.input.Position = [122 333 238 22];

            % Create text
            app.text = uilabel(app.tab1);
            app.text.FontName = 'Consolas';
            app.text.FontAngle = 'italic';
            app.text.Position = [374 333 266 27];
            app.text.Text = '(Nhÿp hàm lÿp nÿu chÿn phÿÿng pháp lÿp)';

            % Create saiso_chiadoi
            app.saiso_chiadoi = uibuttongroup(app.tab1);
            app.saiso_chiadoi.Title = 'Sai sÿ phÿÿng pháp chia ÿôi';
            app.saiso_chiadoi.FontName = 'Consolas';
            app.saiso_chiadoi.Position = [199 194 171 121];

            % Create haidaumut
            app.haidaumut = uiradiobutton(app.saiso_chiadoi);
            app.haidaumut.Text = 'Theo 2 ÿÿu mút';
            app.haidaumut.FontName = 'Consolas';
            app.haidaumut.Position = [11 74 115 22];
            app.haidaumut.Value = true;

            % Create tbc
            app.tbc = uiradiobutton(app.saiso_chiadoi);
            app.tbc.Text = 'Trung bình cÿng';
            app.tbc.FontName = 'Consolas';
            app.tbc.Position = [11 52 121 22];

            % Create saiso_tieptuyen
            app.saiso_tieptuyen = uibuttongroup(app.tab1);
            app.saiso_tieptuyen.Title = 'Sai sÿ phÿÿng pháp tiÿp tuyÿn';
            app.saiso_tieptuyen.Visible = 'off';
            app.saiso_tieptuyen.FontName = 'Consolas';
            app.saiso_tieptuyen.Position = [199 194 171 121];

            % Create hammuctieutt
            app.hammuctieutt = uiradiobutton(app.saiso_tieptuyen);
            app.hammuctieutt.Text = 'Hàm mÿc tiêu';
            app.hammuctieutt.FontName = 'Consolas';
            app.hammuctieutt.Position = [11 74 101 22];
            app.hammuctieutt.Value = true;

            % Create giatrilientieptt
            app.giatrilientieptt = uiradiobutton(app.saiso_tieptuyen);
            app.giatrilientieptt.Text = 'Giá trÿ liên tiÿp';
            app.giatrilientieptt.FontName = 'Consolas';
            app.giatrilientieptt.Position = [11 52 134 22];

            % Create saiso_daycung
            app.saiso_daycung = uibuttongroup(app.tab1);
            app.saiso_daycung.Title = 'Sai sÿ phÿÿng pháp dây cung';
            app.saiso_daycung.Visible = 'off';
            app.saiso_daycung.FontName = 'Consolas';
            app.saiso_daycung.Position = [199 194 171 121];

            % Create hammuctieudc
            app.hammuctieudc = uiradiobutton(app.saiso_daycung);
            app.hammuctieudc.Text = 'Hàm mÿc tiêu';
            app.hammuctieudc.FontName = 'Consolas';
            app.hammuctieudc.Position = [11 74 101 22];
            app.hammuctieudc.Value = true;

            % Create giatrilientiepdc
            app.giatrilientiepdc = uiradiobutton(app.saiso_daycung);
            app.giatrilientiepdc.Text = 'Giá trÿ liên tiÿp';
            app.giatrilientiepdc.FontName = 'Consolas';
            app.giatrilientiepdc.Position = [11 52 134 22];

            % Create saiso_lap
            app.saiso_lap = uibuttongroup(app.tab1);
            app.saiso_lap.Title = 'Sai sÿ phÿÿng pháp lÿp ÿÿn';
            app.saiso_lap.Visible = 'off';
            app.saiso_lap.FontName = 'Consolas';
            app.saiso_lap.Position = [199 195 170 120];

            % Create tiennghiem
            app.tiennghiem = uiradiobutton(app.saiso_lap);
            app.tiennghiem.Text = 'Tiên nghiÿm';
            app.tiennghiem.FontName = 'Consolas';
            app.tiennghiem.Position = [11 73 95 22];
            app.tiennghiem.Value = true;

            % Create haunghiem
            app.haunghiem = uiradiobutton(app.saiso_lap);
            app.haunghiem.Text = 'Hÿu nghiÿm';
            app.haunghiem.FontName = 'Consolas';
            app.haunghiem.Position = [11 51 88 22];

            % Create LynghimLabel
            app.LynghimLabel = uilabel(app.tab1);
            app.LynghimLabel.FontName = 'Consolas';
            app.LynghimLabel.Position = [385 289 120 22];
            app.LynghimLabel.Text = 'Ly nghiÿm:      [';

            % Create lynghiemduoi
            app.lynghiemduoi = uieditfield(app.tab1, 'numeric');
            app.lynghiemduoi.HorizontalAlignment = 'center';
            app.lynghiemduoi.FontName = 'Consolas';
            app.lynghiemduoi.Position = [500 289 40 22];

            % Create lynghiemtren
            app.lynghiemtren = uieditfield(app.tab1, 'numeric');
            app.lynghiemtren.HorizontalAlignment = 'center';
            app.lynghiemtren.FontName = 'Consolas';
            app.lynghiemtren.Position = [560 289 40 22];

            % Create Label
            app.Label = uilabel(app.tab1);
            app.Label.FontName = 'Consolas';
            app.Label.Position = [548 289 25 22];
            app.Label.Text = ';';

            % Create Label_2
            app.Label_2 = uilabel(app.tab1);
            app.Label_2.FontName = 'Consolas';
            app.Label_2.Position = [602 290 25 22];
            app.Label_2.Text = ']';

            % Create cachlap
            app.cachlap = uibuttongroup(app.tab1);
            app.cachlap.Title = 'Cách lÿp';
            app.cachlap.FontName = 'Consolas';
            app.cachlap.Position = [381 224 240 51];

            % Create saiso
            app.saiso = uiradiobutton(app.cachlap);
            app.saiso.Text = 'Sai sÿ';
            app.saiso.FontName = 'Consolas';
            app.saiso.Position = [11 4 62 22];
            app.saiso.Value = true;

            % Create sovong
            app.sovong = uiradiobutton(app.cachlap);
            app.sovong.Text = 'Sÿ vòng';
            app.sovong.FontName = 'Consolas';
            app.sovong.Position = [74 4 68 22];

            % Create k
            app.k = uieditfield(app.cachlap, 'numeric');
            app.k.HorizontalAlignment = 'center';
            app.k.FontName = 'Consolas';
            app.k.Position = [151 5 80 22];

            % Create OK_tab1
            app.OK_tab1 = uibutton(app.tab1, 'push');
            app.OK_tab1.ButtonPushedFcn = createCallbackFcn(app, @OK_tab1ButtonPushed, true);
            app.OK_tab1.FontName = 'Consolas';
            app.OK_tab1.Position = [31 152 100 23];
            app.OK_tab1.Text = 'OK';

            % Create resulttab1
            app.resulttab1 = uibuttongroup(app.tab1);
            app.resulttab1.Title = 'Kÿt quÿ';
            app.resulttab1.FontName = 'Consolas';
            app.resulttab1.Position = [151 25 470 151];

            % Create NghimxpxxLabel
            app.NghimxpxxLabel = uilabel(app.resulttab1);
            app.NghimxpxxLabel.HorizontalAlignment = 'right';
            app.NghimxpxxLabel.FontName = 'Consolas';
            app.NghimxpxxLabel.Position = [10 98 124 22];
            app.NghimxpxxLabel.Text = 'Nghiÿm xÿp xÿ: x =';

            % Create x_out
            app.x_out = uieditfield(app.resulttab1, 'numeric');
            app.x_out.ValueDisplayFormat = '%.8f';
            app.x_out.FontName = 'Consolas';
            app.x_out.Position = [149 98 100 22];

            % Create SlnlpnEditFieldLabel
            app.SlnlpnEditFieldLabel = uilabel(app.resulttab1);
            app.SlnlpnEditFieldLabel.HorizontalAlignment = 'right';
            app.SlnlpnEditFieldLabel.FontName = 'Consolas';
            app.SlnlpnEditFieldLabel.Position = [30 58 104 22];
            app.SlnlpnEditFieldLabel.Text = 'Sÿ lÿn lÿp: n =';

            % Create n_out
            app.n_out = uieditfield(app.resulttab1, 'numeric');
            app.n_out.ValueDisplayFormat = '%.0f';
            app.n_out.FontName = 'Consolas';
            app.n_out.Position = [149 58 100 22];

            % Create SaisdxEditFieldLabel
            app.SaisdxEditFieldLabel = uilabel(app.resulttab1);
            app.SaisdxEditFieldLabel.HorizontalAlignment = 'right';
            app.SaisdxEditFieldLabel.FontName = 'Consolas';
            app.SaisdxEditFieldLabel.Position = [49 18 84 22];
            app.SaisdxEditFieldLabel.Text = 'Sai sÿ: dx =';

            % Create dx_out
            app.dx_out = uieditfield(app.resulttab1, 'numeric');
            app.dx_out.ValueDisplayFormat = '%.8f';
            app.dx_out.FontName = 'Consolas';
            app.dx_out.Position = [148 18 100 22];

            % Create xn1EditFieldLabel
            app.xn1EditFieldLabel = uilabel(app.resulttab1);
            app.xn1EditFieldLabel.HorizontalAlignment = 'right';
            app.xn1EditFieldLabel.FontName = 'Consolas';
            app.xn1EditFieldLabel.Position = [269 98 65 22];
            app.xn1EditFieldLabel.Text = 'x(n-1) = ';

            % Create xn1_out
            app.xn1_out = uieditfield(app.resulttab1, 'numeric');
            app.xn1_out.ValueDisplayFormat = '%.8f';
            app.xn1_out.FontName = 'Consolas';
            app.xn1_out.Position = [349 98 100 22];

            % Create x0Label
            app.x0Label = uilabel(app.resulttab1);
            app.x0Label.HorizontalAlignment = 'right';
            app.x0Label.FontName = 'Consolas';
            app.x0Label.Position = [295 58 39 22];
            app.x0Label.Text = 'x0 = ';

            % Create x0_out
            app.x0_out = uieditfield(app.resulttab1, 'numeric');
            app.x0_out.ValueDisplayFormat = '%.8f';
            app.x0_out.FontName = 'Consolas';
            app.x0_out.Position = [349 58 100 22];

            % Create x1Label
            app.x1Label = uilabel(app.resulttab1);
            app.x1Label.HorizontalAlignment = 'right';
            app.x1Label.FontName = 'Consolas';
            app.x1Label.Position = [295 18 39 22];
            app.x1Label.Text = 'x1 = ';

            % Create x1_out
            app.x1_out = uieditfield(app.resulttab1, 'numeric');
            app.x1_out.ValueDisplayFormat = '%.8f';
            app.x1_out.FontName = 'Consolas';
            app.x1_out.Position = [349 18 100 22];

            % Create init_lap_text
            app.init_lap_text = uilabel(app.tab1);
            app.init_lap_text.FontName = 'Consolas';
            app.init_lap_text.Position = [381 193 157 22];
            app.init_lap_text.Text = 'ÿiÿm bÿt ÿÿu (lÿp):    ';

            % Create init_lap
            app.init_lap = uieditfield(app.tab1, 'numeric');
            app.init_lap.HorizontalAlignment = 'center';
            app.init_lap.FontName = 'Consolas';
            app.init_lap.Enable = 'off';
            app.init_lap.Position = [526 193 90 22];

            % Create HphngtrnhTab
            app.HphngtrnhTab = uitab(app.TabGroup);
            app.HphngtrnhTab.Title = 'Hÿ phÿÿng trình';

            % Create MunnhpkiugthchnButtonGroup
            app.MunnhpkiugthchnButtonGroup = uibuttongroup(app.HphngtrnhTab);
            app.MunnhpkiugthchnButtonGroup.Title = 'Muÿn nhÿp kiÿu gì thì chÿn :>';
            app.MunnhpkiugthchnButtonGroup.FontName = 'Consolas';
            app.MunnhpkiugthchnButtonGroup.Position = [22 270 360 88];

            % Create EnterHPT
            app.EnterHPT = uiradiobutton(app.MunnhpkiugthchnButtonGroup);
            app.EnterHPT.Text = 'Nhÿp hÿ phÿÿng trình AX = B';
            app.EnterHPT.FontName = 'Consolas';
            app.EnterHPT.Position = [11 41 201 22];
            app.EnterHPT.Value = true;

            % Create EnterPTL
            app.EnterPTL = uiradiobutton(app.MunnhpkiugthchnButtonGroup);
            app.EnterPTL.Text = 'Nhÿp phÿÿng trình lÿp X = AX + B';
            app.EnterPTL.FontName = 'Consolas';
            app.EnterPTL.Position = [11 9 235 22];

            % Create InitEditFieldLabel
            app.InitEditFieldLabel = uilabel(app.HphngtrnhTab);
            app.InitEditFieldLabel.HorizontalAlignment = 'right';
            app.InitEditFieldLabel.FontName = 'Consolas';
            app.InitEditFieldLabel.Position = [50 111 51 22];
            app.InitEditFieldLabel.Text = 'Init = ';

            % Create matrixInit
            app.matrixInit = uieditfield(app.HphngtrnhTab, 'text');
            app.matrixInit.FontName = 'Consolas';
            app.matrixInit.Position = [116 111 118 22];

            % Create SlnlpEditFieldLabel
            app.SlnlpEditFieldLabel = uilabel(app.HphngtrnhTab);
            app.SlnlpEditFieldLabel.HorizontalAlignment = 'right';
            app.SlnlpEditFieldLabel.FontName = 'Consolas';
            app.SlnlpEditFieldLabel.Position = [245 111 91 22];
            app.SlnlpEditFieldLabel.Text = 'Sÿ lÿn lÿp = ';

            % Create ll
            app.ll = uieditfield(app.HphngtrnhTab, 'text');
            app.ll.FontName = 'Consolas';
            app.ll.Position = [351 111 31 22];

            % Create OKButton
            app.OKButton = uibutton(app.HphngtrnhTab, 'push');
            app.OKButton.ButtonPushedFcn = createCallbackFcn(app, @OKButtonPushed, true);
            app.OKButton.Position = [264 48 100 22];
            app.OKButton.Text = 'OK';

            % Create MatrnATextAreaLabel
            app.MatrnATextAreaLabel = uilabel(app.HphngtrnhTab);
            app.MatrnATextAreaLabel.HorizontalAlignment = 'right';
            app.MatrnATextAreaLabel.FontName = 'Consolas';
            app.MatrnATextAreaLabel.Position = [5 230 97 22];
            app.MatrnATextAreaLabel.Text = 'Ma trÿn A = ';

            % Create matrixA
            app.matrixA = uitextarea(app.HphngtrnhTab);
            app.matrixA.FontName = 'Consolas';
            app.matrixA.Position = [118 187 264 67];

            % Create MatrnBEditFieldLabel
            app.MatrnBEditFieldLabel = uilabel(app.HphngtrnhTab);
            app.MatrnBEditFieldLabel.HorizontalAlignment = 'right';
            app.MatrnBEditFieldLabel.FontName = 'Consolas';
            app.MatrnBEditFieldLabel.Position = [18 153 84 22];
            app.MatrnBEditFieldLabel.Text = 'Ma trÿn B = ';

            % Create matrixB
            app.matrixB = uieditfield(app.HphngtrnhTab, 'text');
            app.matrixB.FontName = 'Consolas';
            app.matrixB.Position = [117 153 265 22];

            % Create GroupButtonKQ
            app.GroupButtonKQ = uibuttongroup(app.HphngtrnhTab);
            app.GroupButtonKQ.Title = 'Kÿt quÿ';
            app.GroupButtonKQ.Position = [397 18 231 340];

            % Create KQ
            app.KQ = uitable(app.GroupButtonKQ);
            app.KQ.ColumnName = {'X'};
            app.KQ.RowName = {};
            app.KQ.ColumnSortable = false;
            app.KQ.ColumnEditable = false;
            app.KQ.FontName = 'Consolas';
            app.KQ.Position = [78 187 145 120];

            % Create XLabel
            app.XLabel = uilabel(app.GroupButtonKQ);
            app.XLabel.FontName = 'Consolas';
            app.XLabel.FontSize = 24;
            app.XLabel.Position = [16 235 58 31];
            app.XLabel.Text = 'X = ';

            % Create UITable4
            app.UITable4 = uitable(app.GroupButtonKQ);
            app.UITable4.ColumnName = {'Hàng'; 'Cÿt'; 'Eucilde'};
            app.UITable4.ColumnWidth = {62, 62, 62};
            app.UITable4.RowName = {'B'; 'g'};
            app.UITable4.FontName = 'Consolas';
            app.UITable4.Position = [16 14 207 83];

            % Create CcchunhngctEuclideXBXgLabel
            app.CcchunhngctEuclideXBXgLabel = uilabel(app.GroupButtonKQ);
            app.CcchunhngctEuclideXBXgLabel.HorizontalAlignment = 'center';
            app.CcchunhngctEuclideXBXgLabel.FontName = 'Consolas';
            app.CcchunhngctEuclideXBXgLabel.FontAngle = 'italic';
            app.CcchunhngctEuclideXBXgLabel.Position = [20 104 191 29];
            app.CcchunhngctEuclideXBXgLabel.Text = {'Các chuÿn hàng, cÿt, Euclide'; 'X = BX + g'};

            % Create SaisEditFieldLabel_2
            app.SaisEditFieldLabel_2 = uilabel(app.GroupButtonKQ);
            app.SaisEditFieldLabel_2.HorizontalAlignment = 'right';
            app.SaisEditFieldLabel_2.FontName = 'Consolas';
            app.SaisEditFieldLabel_2.Position = [6 148 62 22];
            app.SaisEditFieldLabel_2.Text = 'Sai sÿ: ';

            % Create SaiSo
            app.SaiSo = uieditfield(app.GroupButtonKQ, 'numeric');
            app.SaiSo.ValueDisplayFormat = '%.8f';
            app.SaiSo.FontName = 'Consolas';
            app.SaiSo.Position = [78 148 145 22];

            % Create dgss
            app.dgss = uibuttongroup(app.HphngtrnhTab);
            app.dgss.Title = 'ÿánh giá sai sÿ';
            app.dgss.FontName = 'Consolas';
            app.dgss.Position = [32 14 150 81];

            % Create TienNghiem
            app.TienNghiem = uiradiobutton(app.dgss);
            app.TienNghiem.Text = 'Tiên nghiÿm';
            app.TienNghiem.FontName = 'Consolas';
            app.TienNghiem.Position = [11 34 95 22];
            app.TienNghiem.Value = true;

            % Create HauNghiem
            app.HauNghiem = uiradiobutton(app.dgss);
            app.HauNghiem.Text = 'Hÿu nghiÿm';
            app.HauNghiem.FontName = 'Consolas';
            app.HauNghiem.Position = [10 8 88 22];

            % Create tab2
            app.tab2 = uitab(app.TabGroup);
            app.tab2.Title = 'Nÿi suy';

            % Create phuongphapnoisuy
            app.phuongphapnoisuy = uibuttongroup(app.tab2);
            app.phuongphapnoisuy.SelectionChangedFcn = createCallbackFcn(app, @phuongphapnoisuySelectionChanged, true);
            app.phuongphapnoisuy.Title = 'Phÿÿng pháp nÿi suy';
            app.phuongphapnoisuy.FontName = 'Consolas';
            app.phuongphapnoisuy.Position = [444 308 171 50];

            % Create LagrangeButton
            app.LagrangeButton = uiradiobutton(app.phuongphapnoisuy);
            app.LagrangeButton.Text = 'Lagrange';
            app.LagrangeButton.FontName = 'Consolas';
            app.LagrangeButton.Position = [11 3 75 22];
            app.LagrangeButton.Value = true;

            % Create NewtonButton
            app.NewtonButton = uiradiobutton(app.phuongphapnoisuy);
            app.NewtonButton.Text = 'Newton';
            app.NewtonButton.FontName = 'Consolas';
            app.NewtonButton.Position = [102 1 65 22];

            % Create DataXEditFieldLabel
            app.DataXEditFieldLabel = uilabel(app.tab2);
            app.DataXEditFieldLabel.HorizontalAlignment = 'right';
            app.DataXEditFieldLabel.FontName = 'Consolas';
            app.DataXEditFieldLabel.Position = [18 338 65 22];
            app.DataXEditFieldLabel.Text = 'Data X = ';

            % Create DataX
            app.DataX = uieditfield(app.tab2, 'text');
            app.DataX.FontName = 'Consolas';
            app.DataX.Position = [98 338 319 22];

            % Create DataYEditFieldLabel
            app.DataYEditFieldLabel = uilabel(app.tab2);
            app.DataYEditFieldLabel.HorizontalAlignment = 'right';
            app.DataYEditFieldLabel.FontName = 'Consolas';
            app.DataYEditFieldLabel.Position = [18 308 65 22];
            app.DataYEditFieldLabel.Text = 'Data Y = ';

            % Create DataY
            app.DataY = uieditfield(app.tab2, 'text');
            app.DataY.FontName = 'Consolas';
            app.DataY.Position = [98 308 319 22];

            % Create matranbiendoi
            app.matranbiendoi = uitextarea(app.tab2);
            app.matranbiendoi.Editable = 'off';
            app.matranbiendoi.FontName = 'Consolas';
            app.matranbiendoi.Position = [17 23 300 263];
            app.matranbiendoi.Value = {'- ÿÿi vÿi phÿÿng pháp Lagrange'; ' sÿ hiÿn thÿ theo thÿ tÿ là L0, L1, L2 ...'; '- ÿÿi vÿi phÿÿng pháp Newton sÿ hiÿn ra ma trÿn biÿn ÿÿi'; ''; ''; ''; ''; ''; 'Vÿ ÿÿc Cÿÿng - EE2-06-K65-HUST'; 'Donate em nha các bÿn ÿÿp trai xinh gái :3'; ''; '9704229208140232101 - MB bank'; '0865.28.08.02       - Viettel Pay'; ''};

            % Create OK_tab2
            app.OK_tab2 = uibutton(app.tab2, 'push');
            app.OK_tab2.ButtonPushedFcn = createCallbackFcn(app, @OK_tab2ButtonPushed, true);
            app.OK_tab2.FontName = 'Consolas';
            app.OK_tab2.Position = [509 263 100 23];
            app.OK_tab2.Text = 'OK';

            % Create KtquLabel
            app.KtquLabel = uilabel(app.tab2);
            app.KtquLabel.HorizontalAlignment = 'right';
            app.KtquLabel.FontName = 'Consolas';
            app.KtquLabel.Position = [316 223 84 22];
            app.KtquLabel.Text = 'Kÿt quÿ:    ';

            % Create result
            app.result = uieditfield(app.tab2, 'text');
            app.result.FontName = 'Consolas';
            app.result.Position = [379 223 246 22];

            % Create result2
            app.result2 = uieditfield(app.tab2, 'text');
            app.result2.FontName = 'Consolas';
            app.result2.Enable = 'off';
            app.result2.Position = [379 191 246 22];

            % Create UITable
            app.UITable = uitable(app.tab2);
            app.UITable.ColumnName = {''};
            app.UITable.RowName = {};
            app.UITable.ColumnEditable = false;
            app.UITable.Visible = 'off';
            app.UITable.FontName = 'Consolas';
            app.UITable.Position = [18 23 299 263];

            % Create ohmButtonGroup
            app.ohmButtonGroup = uibuttongroup(app.tab2);
            app.ohmButtonGroup.Title = 'ÿÿo hàm';
            app.ohmButtonGroup.FontName = 'Consolas';
            app.ohmButtonGroup.Position = [329 17 296 158];

            % Create KtquEditFieldLabel
            app.KtquEditFieldLabel = uilabel(app.ohmButtonGroup);
            app.KtquEditFieldLabel.HorizontalAlignment = 'right';
            app.KtquEditFieldLabel.FontName = 'Consolas';
            app.KtquEditFieldLabel.Position = [18 41 61 22];
            app.KtquEditFieldLabel.Text = 'Kÿt quÿ: ';

            % Create KQ_daoham
            app.KQ_daoham = uieditfield(app.ohmButtonGroup, 'numeric');
            app.KQ_daoham.FontName = 'Consolas';
            app.KQ_daoham.Position = [78 41 187 22];

            % Create BcEditFieldLabel
            app.BcEditFieldLabel = uilabel(app.ohmButtonGroup);
            app.BcEditFieldLabel.HorizontalAlignment = 'right';
            app.BcEditFieldLabel.FontName = 'Consolas';
            app.BcEditFieldLabel.Position = [41 106 40 22];
            app.BcEditFieldLabel.Text = 'Bÿc : ';

            % Create bac
            app.bac = uieditfield(app.ohmButtonGroup, 'text');
            app.bac.FontName = 'Consolas';
            app.bac.Position = [85 106 37 22];

            % Create imEditFieldLabel
            app.imEditFieldLabel = uilabel(app.ohmButtonGroup);
            app.imEditFieldLabel.HorizontalAlignment = 'right';
            app.imEditFieldLabel.FontName = 'Consolas';
            app.imEditFieldLabel.Position = [156 108 44 22];
            app.imEditFieldLabel.Text = 'ÿiÿm: ';

            % Create diem
            app.diem = uieditfield(app.ohmButtonGroup, 'text');
            app.diem.FontName = 'Consolas';
            app.diem.Position = [199 108 52 22];

            % Create OK_daoham
            app.OK_daoham = uibutton(app.ohmButtonGroup, 'push');
            app.OK_daoham.ButtonPushedFcn = createCallbackFcn(app, @OK_daohamButtonPushed, true);
            app.OK_daoham.IconAlignment = 'center';
            app.OK_daoham.FontName = 'Consolas';
            app.OK_daoham.Position = [126 73 63 22];
            app.OK_daoham.Text = 'OK';

            % Create KQ_daoham_2
            app.KQ_daoham_2 = uieditfield(app.ohmButtonGroup, 'numeric');
            app.KQ_daoham_2.FontName = 'Consolas';
            app.KQ_daoham_2.Enable = 'off';
            app.KQ_daoham_2.Position = [79 12 187 22];

            % Create MccchuCheckBox
            app.MccchuCheckBox = uicheckbox(app.tab2);
            app.MccchuCheckBox.Enable = 'off';
            app.MccchuCheckBox.Text = 'Mÿc cách ÿÿu';
            app.MccchuCheckBox.FontName = 'Consolas';
            app.MccchuCheckBox.Position = [350 264 101 22];

            % Create tab3
            app.tab3 = uitab(app.TabGroup);
            app.tab3.Title = 'Fit hàm';

            % Create UIAxes
            app.UIAxes = uiaxes(app.tab3);
            title(app.UIAxes, 'Hàm fit và dÿ liÿu')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            app.UIAxes.FontName = 'Consolas';
            app.UIAxes.XGrid = 'on';
            app.UIAxes.YGrid = 'on';
            app.UIAxes.Position = [306 12 330 260];

            % Create DataXEditFieldLabel_2
            app.DataXEditFieldLabel_2 = uilabel(app.tab3);
            app.DataXEditFieldLabel_2.HorizontalAlignment = 'right';
            app.DataXEditFieldLabel_2.FontName = 'Consolas';
            app.DataXEditFieldLabel_2.Position = [11 333 65 22];
            app.DataXEditFieldLabel_2.Text = 'Data X = ';

            % Create DataX_2
            app.DataX_2 = uieditfield(app.tab3, 'text');
            app.DataX_2.FontName = 'Consolas';
            app.DataX_2.Position = [91 333 355 22];

            % Create DataYEditFieldLabel_2
            app.DataYEditFieldLabel_2 = uilabel(app.tab3);
            app.DataYEditFieldLabel_2.HorizontalAlignment = 'right';
            app.DataYEditFieldLabel_2.FontName = 'Consolas';
            app.DataYEditFieldLabel_2.Position = [11 303 65 22];
            app.DataYEditFieldLabel_2.Text = 'Data Y = ';

            % Create DataY_2
            app.DataY_2 = uieditfield(app.tab3, 'text');
            app.DataY_2.FontName = 'Consolas';
            app.DataY_2.Position = [91 303 355 22];

            % Create ChnhmmunfitDropDownLabel
            app.ChnhmmunfitDropDownLabel = uilabel(app.tab3);
            app.ChnhmmunfitDropDownLabel.HorizontalAlignment = 'right';
            app.ChnhmmunfitDropDownLabel.FontName = 'Consolas';
            app.ChnhmmunfitDropDownLabel.Position = [11 263 131 22];
            app.ChnhmmunfitDropDownLabel.Text = 'Chÿn hàm muÿn fit: ';

            % Create options
            app.options = uidropdown(app.tab3);
            app.options.Items = {'y = a*x + b', 'y = a*x^2 + b*x + c', 'y = a*x^3 + b*x^2 + c*x + d', 'y = a*x^b', 'y = a*exp(x*b)', 'Tùy chÿn'};
            app.options.ItemsData = {'1', '2', '3', '4', '5', '6'};
            app.options.ValueChangedFcn = createCallbackFcn(app, @optionsValueChanged, true);
            app.options.FontName = 'Consolas';
            app.options.Position = [157 263 150 22];
            app.options.Value = '1';

            % Create OK_tab3
            app.OK_tab3 = uibutton(app.tab3, 'push');
            app.OK_tab3.ButtonPushedFcn = createCallbackFcn(app, @OK_tab3ButtonPushed, true);
            app.OK_tab3.FontName = 'Consolas';
            app.OK_tab3.Position = [104 165 100 23];
            app.OK_tab3.Text = 'OK';

            % Create aEditFieldLabel
            app.aEditFieldLabel = uilabel(app.tab3);
            app.aEditFieldLabel.HorizontalAlignment = 'right';
            app.aEditFieldLabel.FontName = 'Consolas';
            app.aEditFieldLabel.Position = [25 116 35 22];
            app.aEditFieldLabel.Text = 'a = ';

            % Create fit_a
            app.fit_a = uieditfield(app.tab3, 'numeric');
            app.fit_a.ValueDisplayFormat = '%.8f';
            app.fit_a.FontName = 'Consolas';
            app.fit_a.Position = [57 116 89 22];

            % Create bEditFieldLabel
            app.bEditFieldLabel = uilabel(app.tab3);
            app.bEditFieldLabel.HorizontalAlignment = 'right';
            app.bEditFieldLabel.FontName = 'Consolas';
            app.bEditFieldLabel.Position = [25 86 35 22];
            app.bEditFieldLabel.Text = 'b = ';

            % Create fit_b
            app.fit_b = uieditfield(app.tab3, 'numeric');
            app.fit_b.ValueDisplayFormat = '%.8f';
            app.fit_b.FontName = 'Consolas';
            app.fit_b.Position = [59 86 87 22];

            % Create cEditFieldLabel
            app.cEditFieldLabel = uilabel(app.tab3);
            app.cEditFieldLabel.HorizontalAlignment = 'right';
            app.cEditFieldLabel.FontName = 'Consolas';
            app.cEditFieldLabel.Position = [163 116 34 22];
            app.cEditFieldLabel.Text = 'c = ';

            % Create fit_c
            app.fit_c = uieditfield(app.tab3, 'numeric');
            app.fit_c.ValueDisplayFormat = '%.8f';
            app.fit_c.FontName = 'Consolas';
            app.fit_c.Position = [196 116 87 22];

            % Create dEditFieldLabel
            app.dEditFieldLabel = uilabel(app.tab3);
            app.dEditFieldLabel.HorizontalAlignment = 'right';
            app.dEditFieldLabel.FontName = 'Consolas';
            app.dEditFieldLabel.Position = [163 85 34 22];
            app.dEditFieldLabel.Text = 'd = ';

            % Create fit_d
            app.fit_d = uieditfield(app.tab3, 'numeric');
            app.fit_d.ValueDisplayFormat = '%.8f';
            app.fit_d.FontName = 'Consolas';
            app.fit_d.Position = [196 85 87 22];

            % Create SSELabel
            app.SSELabel = uilabel(app.tab3);
            app.SSELabel.HorizontalAlignment = 'right';
            app.SSELabel.FontName = 'Consolas';
            app.SSELabel.Position = [70 47 45 22];
            app.SSELabel.Text = 'SSE = ';

            % Create SSE
            app.SSE = uieditfield(app.tab3, 'numeric');
            app.SSE.ValueDisplayFormat = '%.8f';
            app.SSE.FontName = 'Consolas';
            app.SSE.Position = [126 47 88 22];

            % Create fxEditFieldLabel_3
            app.fxEditFieldLabel_3 = uilabel(app.tab3);
            app.fxEditFieldLabel_3.HorizontalAlignment = 'right';
            app.fxEditFieldLabel_3.FontName = 'Consolas';
            app.fxEditFieldLabel_3.Position = [42 228 51 22];
            app.fxEditFieldLabel_3.Text = 'f(x) = ';

            % Create fx_fit
            app.fx_fit = uieditfield(app.tab3, 'text');
            app.fx_fit.FontName = 'Consolas';
            app.fx_fit.Enable = 'off';
            app.fx_fit.Position = [108 228 180 22];

            % Create noti
            app.noti = uilabel(app.tab3);
            app.noti.FontName = 'Consolas';
            app.noti.FontAngle = 'italic';
            app.noti.Enable = 'off';
            app.noti.Position = [11 199 286 22];
            app.noti.Text = 'Nhÿp tham sÿ theo thÿ tÿ a, b, c, d nhé :>';

            % Create int
            app.int = uitab(app.TabGroup);
            app.int.Title = 'Tích phân';

            % Create fxEditFieldLabel_2
            app.fxEditFieldLabel_2 = uilabel(app.int);
            app.fxEditFieldLabel_2.HorizontalAlignment = 'right';
            app.fxEditFieldLabel_2.FontName = 'Consolas';
            app.fxEditFieldLabel_2.Position = [23 272 51 22];
            app.fxEditFieldLabel_2.Text = 'f(x) = ';

            % Create input_int
            app.input_int = uieditfield(app.int, 'text');
            app.input_int.FontName = 'Consolas';
            app.input_int.Position = [83 272 257 22];

            % Create UITable3
            app.UITable3 = uitable(app.int);
            app.UITable3.ColumnName = {'X'; 'Y'};
            app.UITable3.ColumnWidth = {60, 'auto'};
            app.UITable3.RowName = {};
            app.UITable3.FontName = 'Consolas';
            app.UITable3.Position = [381 22 240 309];

            % Create tabledulieu_2
            app.tabledulieu_2 = uilabel(app.int);
            app.tabledulieu_2.FontName = 'Consolas';
            app.tabledulieu_2.FontWeight = 'bold';
            app.tabledulieu_2.FontAngle = 'italic';
            app.tabledulieu_2.Position = [459 337 84 22];
            app.tabledulieu_2.Text = 'Bÿng dÿ liÿu';

            % Create CnLabel
            app.CnLabel = uilabel(app.int);
            app.CnLabel.HorizontalAlignment = 'right';
            app.CnLabel.FontName = 'Consolas';
            app.CnLabel.Position = [23 237 45 22];
            app.CnLabel.Text = 'Cÿn:  ';

            % Create can
            app.can = uieditfield(app.int, 'text');
            app.can.FontName = 'Consolas';
            app.can.Position = [83 237 102 22];

            % Create SkhongLabel
            app.SkhongLabel = uilabel(app.int);
            app.SkhongLabel.HorizontalAlignment = 'right';
            app.SkhongLabel.FontName = 'Consolas';
            app.SkhongLabel.Position = [207 237 71 22];
            app.SkhongLabel.Text = 'Sÿ khoÿng:';

            % Create sokhoang
            app.sokhoang = uieditfield(app.int, 'text');
            app.sokhoang.FontName = 'Consolas';
            app.sokhoang.Position = [293 237 47 22];

            % Create phuongthuctinh
            app.phuongthuctinh = uibuttongroup(app.int);
            app.phuongthuctinh.Title = 'Phÿÿng thÿc tính';
            app.phuongthuctinh.FontName = 'Consolas';
            app.phuongthuctinh.Position = [21 161 313 55];

            % Create hinhthang
            app.hinhthang = uiradiobutton(app.phuongthuctinh);
            app.hinhthang.Text = 'Hình thang';
            app.hinhthang.FontName = 'Consolas';
            app.hinhthang.Position = [11 4 88 22];
            app.hinhthang.Value = true;

            % Create simpson
            app.simpson = uiradiobutton(app.phuongthuctinh);
            app.simpson.Text = 'Simpson 1/3';
            app.simpson.FontName = 'Consolas';
            app.simpson.Position = [106 4 95 22];

            % Create simpson_2
            app.simpson_2 = uiradiobutton(app.phuongthuctinh);
            app.simpson_2.Text = 'Simpson 3/8';
            app.simpson_2.FontName = 'Consolas';
            app.simpson_2.Position = [211 4 95 22];

            % Create OK_tab4
            app.OK_tab4 = uibutton(app.int, 'push');
            app.OK_tab4.ButtonPushedFcn = createCallbackFcn(app, @OK_tab4ButtonPushed, true);
            app.OK_tab4.Position = [129 118 100 22];
            app.OK_tab4.Text = 'OK';

            % Create IEditFieldLabel
            app.IEditFieldLabel = uilabel(app.int);
            app.IEditFieldLabel.HorizontalAlignment = 'right';
            app.IEditFieldLabel.FontName = 'Consolas';
            app.IEditFieldLabel.Position = [42 73 31 22];
            app.IEditFieldLabel.Text = 'I = ';

            % Create I_out
            app.I_out = uieditfield(app.int, 'numeric');
            app.I_out.ValueDisplayFormat = '%.8f';
            app.I_out.FontName = 'Consolas';
            app.I_out.Position = [88 73 233 22];

            % Create SaisEditFieldLabel
            app.SaisEditFieldLabel = uilabel(app.int);
            app.SaisEditFieldLabel.HorizontalAlignment = 'right';
            app.SaisEditFieldLabel.FontName = 'Consolas';
            app.SaisEditFieldLabel.Position = [16 32 58 22];
            app.SaisEditFieldLabel.Text = 'Sai sÿ: ';

            % Create saiso_int
            app.saiso_int = uieditfield(app.int, 'numeric');
            app.saiso_int.ValueDisplayFormat = '%.8f';
            app.saiso_int.FontName = 'Consolas';
            app.saiso_int.Position = [89 32 233 22];

            % Create select_tab4
            app.select_tab4 = uibuttongroup(app.int);
            app.select_tab4.SelectionChangedFcn = createCallbackFcn(app, @select_tab4SelectionChanged, true);
            app.select_tab4.Title = 'Muÿn nhÿp gì thì chÿn nÿy :) ';
            app.select_tab4.FontName = 'Consolas';
            app.select_tab4.Position = [23 306 317 53];

            % Create fcn_can
            app.fcn_can = uiradiobutton(app.select_tab4);
            app.fcn_can.Text = 'Nhÿp hàm và cÿn';
            app.fcn_can.FontName = 'Consolas';
            app.fcn_can.Position = [11 5 121 22];
            app.fcn_can.Value = true;

            % Create dataXY
            app.dataXY = uiradiobutton(app.select_tab4);
            app.dataXY.Text = 'Nhÿp data X và Y';
            app.dataXY.FontName = 'Consolas';
            app.dataXY.Position = [171 5 127 22];

            % Create DataXLabel
            app.DataXLabel = uilabel(app.int);
            app.DataXLabel.HorizontalAlignment = 'right';
            app.DataXLabel.FontName = 'Consolas';
            app.DataXLabel.Visible = 'off';
            app.DataXLabel.Position = [12 272 71 22];
            app.DataXLabel.Text = 'Data X =  ';

            % Create DataX_4
            app.DataX_4 = uieditfield(app.int, 'text');
            app.DataX_4.FontName = 'Consolas';
            app.DataX_4.Visible = 'off';
            app.DataX_4.Position = [82 272 256 22];

            % Create DataYLabel
            app.DataYLabel = uilabel(app.int);
            app.DataYLabel.HorizontalAlignment = 'right';
            app.DataYLabel.FontName = 'Consolas';
            app.DataYLabel.Visible = 'off';
            app.DataYLabel.Position = [12 237 71 22];
            app.DataYLabel.Text = 'Data Y =  ';

            % Create DataY_4
            app.DataY_4 = uieditfield(app.int, 'text');
            app.DataY_4.FontName = 'Consolas';
            app.DataY_4.Visible = 'off';
            app.DataY_4.Position = [82 237 256 22];

            % Create PTVP
            app.PTVP = uitab(app.TabGroup);
            app.PTVP.Title = 'PTVP';

            % Create UITable2
            app.UITable2 = uitable(app.PTVP);
            app.UITable2.ColumnName = {'X'; 'Y'};
            app.UITable2.ColumnWidth = {60, 'auto'};
            app.UITable2.RowName = {};
            app.UITable2.ColumnSortable = [true false];
            app.UITable2.FontName = 'Consolas';
            app.UITable2.Position = [445 18 181 314];

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.PTVP);
            title(app.UIAxes2, 'ÿÿ thÿ gÿn ÿúng cÿa phÿÿng trình vi phân')
            xlabel(app.UIAxes2, 'X')
            ylabel(app.UIAxes2, 'Y')
            app.UIAxes2.FontName = 'Consolas';
            app.UIAxes2.Position = [11 18 406 209];

            % Create PTVPdyEditFieldLabel
            app.PTVPdyEditFieldLabel = uilabel(app.PTVP);
            app.PTVPdyEditFieldLabel.HorizontalAlignment = 'right';
            app.PTVPdyEditFieldLabel.FontName = 'Consolas';
            app.PTVPdyEditFieldLabel.Position = [3 331 78 22];
            app.PTVPdyEditFieldLabel.Text = 'PTVP: dy = ';

            % Create dy
            app.dy = uieditfield(app.PTVP, 'text');
            app.dy.FontName = 'Consolas';
            app.dy.Position = [96 331 212 22];

            % Create DataXEditFieldLabel_3
            app.DataXEditFieldLabel_3 = uilabel(app.PTVP);
            app.DataXEditFieldLabel_3.HorizontalAlignment = 'right';
            app.DataXEditFieldLabel_3.FontName = 'Consolas';
            app.DataXEditFieldLabel_3.Position = [19 296 65 22];
            app.DataXEditFieldLabel_3.Text = 'Data X = ';

            % Create DataX_3
            app.DataX_3 = uieditfield(app.PTVP, 'text');
            app.DataX_3.FontName = 'Consolas';
            app.DataX_3.Position = [96 296 77 22];

            % Create StepLabel
            app.StepLabel = uilabel(app.PTVP);
            app.StepLabel.HorizontalAlignment = 'right';
            app.StepLabel.FontName = 'Consolas';
            app.StepLabel.Position = [184 296 54 22];
            app.StepLabel.Text = 'Step = ';

            % Create Step
            app.Step = uieditfield(app.PTVP, 'text');
            app.Step.FontName = 'Consolas';
            app.Step.Position = [237 296 53 22];

            % Create InitLabel
            app.InitLabel = uilabel(app.PTVP);
            app.InitLabel.HorizontalAlignment = 'right';
            app.InitLabel.FontName = 'Consolas';
            app.InitLabel.Position = [298 296 49 22];
            app.InitLabel.Text = 'Init = ';

            % Create Init
            app.Init = uieditfield(app.PTVP, 'text');
            app.Init.FontName = 'Consolas';
            app.Init.Position = [346 296 64 22];

            % Create OK_tab5Button
            app.OK_tab5Button = uibutton(app.PTVP, 'push');
            app.OK_tab5Button.ButtonPushedFcn = createCallbackFcn(app, @OK_tab5ButtonPushed, true);
            app.OK_tab5Button.FontName = 'Consolas';
            app.OK_tab5Button.Position = [330 330 100 23];
            app.OK_tab5Button.Text = 'OK';

            % Create tabledulieu
            app.tabledulieu = uilabel(app.PTVP);
            app.tabledulieu.FontName = 'Consolas';
            app.tabledulieu.FontWeight = 'bold';
            app.tabledulieu.FontAngle = 'italic';
            app.tabledulieu.Position = [502 331 84 22];
            app.tabledulieu.Text = 'Bÿng dÿ liÿu';

            % Create Hychnchomnh1phngphpButtonGroup
            app.Hychnchomnh1phngphpButtonGroup = uibuttongroup(app.PTVP);
            app.Hychnchomnh1phngphpButtonGroup.Title = 'Hãy chÿn cho mình 1 phÿÿng pháp :>';
            app.Hychnchomnh1phngphpButtonGroup.FontName = 'Consolas';
            app.Hychnchomnh1phngphpButtonGroup.Position = [19 234 391 55];

            % Create EulerButton
            app.EulerButton = uiradiobutton(app.Hychnchomnh1phngphpButtonGroup);
            app.EulerButton.Text = 'Euler';
            app.EulerButton.FontName = 'Consolas';
            app.EulerButton.Position = [11 8 58 22];
            app.EulerButton.Value = true;

            % Create EulerctButton
            app.EulerctButton = uiradiobutton(app.Hychnchomnh1phngphpButtonGroup);
            app.EulerctButton.Text = 'Euler cÿi tiÿn';
            app.EulerctButton.FontName = 'Consolas';
            app.EulerctButton.Position = [125 8 115 22];

            % Create RK4Button
            app.RK4Button = uiradiobutton(app.Hychnchomnh1phngphpButtonGroup);
            app.RK4Button.Text = 'RK4';
            app.RK4Button.FontName = 'Consolas';
            app.RK4Button.Position = [302 8 65 22];

            % Create title
            app.title = uilabel(app.NumericalMethod);
            app.title.HorizontalAlignment = 'center';
            app.title.FontSize = 14;
            app.title.FontWeight = 'bold';
            app.title.FontAngle = 'italic';
            app.title.FontColor = [1 0 0];
            app.title.Position = [61 405 148 22];
            app.title.Text = 'PHÿÿNG PHÁP TÍNH';

            % Create ContactmeButton
            app.ContactmeButton = uibutton(app.NumericalMethod, 'push');
            app.ContactmeButton.ButtonPushedFcn = createCallbackFcn(app, @ContactmeButtonPushed, true);
            app.ContactmeButton.FontName = 'Consolas';
            app.ContactmeButton.FontWeight = 'bold';
            app.ContactmeButton.FontAngle = 'italic';
            app.ContactmeButton.Position = [493 404 130 23];
            app.ContactmeButton.Text = 'Contact me :>';

            % Show the figure after all components are created
            app.NumericalMethod.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = sorce

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.NumericalMethod)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.NumericalMethod)
        end
    end
end