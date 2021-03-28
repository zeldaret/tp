lbl_80CA4764:
/* 80CA4764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA4768  7C 08 02 A6 */	mflr r0
/* 80CA476C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA4770  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA4774  7C 7F 1B 78 */	mr r31, r3
/* 80CA4778  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CA477C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CA4780  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CA4784  38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 80CA4788  4B 3D 09 78 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80CA478C  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80CA4790  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA4794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA4798  7C 08 03 A6 */	mtlr r0
/* 80CA479C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA47A0  4E 80 00 20 */	blr 
