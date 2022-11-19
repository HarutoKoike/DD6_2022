
tnames = ['N_HIA__C3_PP_CIS', $
          'T_HIA__C3_PP_CIS', $
          'flux__C3_CP_CIS-HIA_HS_1D_PEF', $
          'B_gsm__C3', $
          'V_para_perp__C3' $
          ]


t1   = '2004-03-10/12:26:56'
idx1 = nn('flux__C3_CP_CIS-HIA_HS_1D_PEF', t1)
t2   = '2004-03-10/12:23:00'
idx2 = nn('flux__C3_CP_CIS-HIA_HS_1D_PEF', t2)
;
get_data, 'flux__C3_CP_CIS-HIA_HS_1D_PEF', data=d

;plot, d.v, d.y[idx1, *], /xlog, /ylog, xrange=[d.v[-1], d.v[0]]
;oplot, d.v, d.y[idx2, *], color=50



sw = 0.5 * (700.e3)^2 + !const.k * 5.e5 * (2.5 + 1/1.1) / !const.mp
sh = 0.5 * (300.e3)^2 + !const.k * 8.e6 * (2.5 + 1/5.) / !const.mp

print, sw
print, sh

end
