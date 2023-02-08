lbl_80CC2310:
/* 80CC2310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC2314  7C 08 02 A6 */	mflr r0
/* 80CC2318  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC231C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC2320  7C 7F 1B 78 */	mr r31, r3
/* 80CC2324  88 03 05 BC */	lbz r0, 0x5bc(r3)
/* 80CC2328  28 00 00 00 */	cmplwi r0, 0
/* 80CC232C  40 82 00 24 */	bne lbl_80CC2350
/* 80CC2330  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC2334  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC2338  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC233C  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80CC2340  7F E5 FB 78 */	mr r5, r31
/* 80CC2344  4B 3B 26 C5 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CC2348  38 00 00 01 */	li r0, 1
/* 80CC234C  98 1F 05 BC */	stb r0, 0x5bc(r31)
lbl_80CC2350:
/* 80CC2350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC2354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC2358  7C 08 03 A6 */	mtlr r0
/* 80CC235C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC2360  4E 80 00 20 */	blr 
