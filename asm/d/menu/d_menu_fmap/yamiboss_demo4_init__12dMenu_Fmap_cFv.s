lbl_801CA468:
/* 801CA468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CA46C  7C 08 02 A6 */	mflr r0
/* 801CA470  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CA474  38 00 00 00 */	li r0, 0
/* 801CA478  B0 03 02 14 */	sth r0, 0x214(r3)
/* 801CA47C  38 00 00 BC */	li r0, 0xbc
/* 801CA480  90 01 00 08 */	stw r0, 8(r1)
/* 801CA484  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801CA488  38 81 00 08 */	addi r4, r1, 8
/* 801CA48C  38 A0 00 00 */	li r5, 0
/* 801CA490  38 C0 00 00 */	li r6, 0
/* 801CA494  38 E0 00 00 */	li r7, 0
/* 801CA498  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801CA49C  FC 40 08 90 */	fmr f2, f1
/* 801CA4A0  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801CA4A4  FC 80 18 90 */	fmr f4, f3
/* 801CA4A8  39 00 00 00 */	li r8, 0
/* 801CA4AC  48 0E 14 D9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801CA4B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CA4B4  7C 08 03 A6 */	mtlr r0
/* 801CA4B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801CA4BC  4E 80 00 20 */	blr 
