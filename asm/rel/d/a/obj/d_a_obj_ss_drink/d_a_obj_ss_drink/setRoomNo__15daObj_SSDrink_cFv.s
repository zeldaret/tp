lbl_80CE6040:
/* 80CE6040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE6044  7C 08 02 A6 */	mflr r0
/* 80CE6048  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE604C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE6050  7C 7F 1B 78 */	mr r31, r3
/* 80CE6054  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CE6058  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CE605C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CE6060  38 9F 0A 70 */	addi r4, r31, 0xa70
/* 80CE6064  4B 38 F0 9C */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80CE6068  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80CE606C  98 7F 07 8A */	stb r3, 0x78a(r31)
/* 80CE6070  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE6074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE6078  7C 08 03 A6 */	mtlr r0
/* 80CE607C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE6080  4E 80 00 20 */	blr 
