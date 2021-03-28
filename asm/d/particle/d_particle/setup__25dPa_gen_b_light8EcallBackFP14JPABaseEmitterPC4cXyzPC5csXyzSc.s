lbl_800497B0:
/* 800497B0  38 00 00 02 */	li r0, 2
/* 800497B4  98 04 01 10 */	stb r0, 0x110(r4)
/* 800497B8  38 0D 89 38 */	la r0, m_b_Light8PcallBack__13dPa_control_c(r13) /* 80450EB8-_SDA_BASE_ */
/* 800497BC  90 04 00 F0 */	stw r0, 0xf0(r4)
/* 800497C0  7C E0 07 74 */	extsb r0, r7
/* 800497C4  90 04 00 C0 */	stw r0, 0xc0(r4)
/* 800497C8  4E 80 00 20 */	blr 
