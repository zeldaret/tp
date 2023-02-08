lbl_800497CC:
/* 800497CC  38 00 00 02 */	li r0, 2
/* 800497D0  98 04 01 10 */	stb r0, 0x110(r4)
/* 800497D4  38 0D 89 40 */	la r0, m_d_Light8PcallBack__13dPa_control_c(r13) /* 80450EC0-_SDA_BASE_ */
/* 800497D8  90 04 00 F0 */	stw r0, 0xf0(r4)
/* 800497DC  7C E0 07 74 */	extsb r0, r7
/* 800497E0  90 04 00 C0 */	stw r0, 0xc0(r4)
/* 800497E4  4E 80 00 20 */	blr 
