lbl_8002D6B4:
/* 8002D6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002D6B8  7C 08 02 A6 */	mflr r0
/* 8002D6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002D6C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002D6C4  93 C1 00 08 */	stw r30, 8(r1)
/* 8002D6C8  7C 7E 1B 78 */	mr r30, r3
/* 8002D6CC  7C 9F 23 78 */	mr r31, r4
/* 8002D6D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D6D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D6D8  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8002D6DC  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8002D6E0  7D 89 03 A6 */	mtctr r12
/* 8002D6E4  4E 80 04 21 */	bctrl 
/* 8002D6E8  88 03 00 09 */	lbz r0, 9(r3)
/* 8002D6EC  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 8002D6F0  7C 1E 00 00 */	cmpw r30, r0
/* 8002D6F4  40 82 00 18 */	bne lbl_8002D70C
/* 8002D6F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D6FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D700  7F E4 FB 78 */	mr r4, r31
/* 8002D704  38 A0 FF FF */	li r5, -1
/* 8002D708  48 00 7B A9 */	bl offSwitch__10dSv_info_cFii
lbl_8002D70C:
/* 8002D70C  57 C4 28 34 */	slwi r4, r30, 5
/* 8002D710  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002D714  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002D718  7C 60 22 14 */	add r3, r0, r4
/* 8002D71C  38 63 01 F0 */	addi r3, r3, 0x1f0
/* 8002D720  7F E4 FB 78 */	mr r4, r31
/* 8002D724  48 00 71 15 */	bl offSwitch__12dSv_memBit_cFi
/* 8002D728  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002D72C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002D730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002D734  7C 08 03 A6 */	mtlr r0
/* 8002D738  38 21 00 10 */	addi r1, r1, 0x10
/* 8002D73C  4E 80 00 20 */	blr 
