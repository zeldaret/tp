lbl_8002F040:
/* 8002F040  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002F044  7C 08 02 A6 */	mflr r0
/* 8002F048  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002F04C  39 61 00 20 */	addi r11, r1, 0x20
/* 8002F050  48 33 31 8D */	bl _savegpr_29
/* 8002F054  7C 7D 1B 78 */	mr r29, r3
/* 8002F058  7C 9E 23 78 */	mr r30, r4
/* 8002F05C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002F060  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002F064  3B E3 4E 20 */	addi r31, r3, 0x4e20
/* 8002F068  7F E3 FB 78 */	mr r3, r31
/* 8002F06C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8002F070  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8002F074  7D 89 03 A6 */	mtctr r12
/* 8002F078  4E 80 04 21 */	bctrl 
/* 8002F07C  28 03 00 00 */	cmplwi r3, 0
/* 8002F080  41 82 00 34 */	beq lbl_8002F0B4
/* 8002F084  7F E3 FB 78 */	mr r3, r31
/* 8002F088  81 9F 00 00 */	lwz r12, 0(r31)
/* 8002F08C  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8002F090  7D 89 03 A6 */	mtctr r12
/* 8002F094  4E 80 04 21 */	bctrl 
/* 8002F098  88 03 00 09 */	lbz r0, 9(r3)
/* 8002F09C  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 8002F0A0  7C 1D 00 00 */	cmpw r29, r0
/* 8002F0A4  40 82 00 10 */	bne lbl_8002F0B4
/* 8002F0A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002F0AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002F0B0  9B C3 09 74 */	stb r30, 0x974(r3)
lbl_8002F0B4:
/* 8002F0B4  57 A4 28 34 */	slwi r4, r29, 5
/* 8002F0B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002F0BC  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002F0C0  7C 60 22 14 */	add r3, r0, r4
/* 8002F0C4  9B C3 02 0C */	stb r30, 0x20c(r3)
/* 8002F0C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8002F0CC  48 33 31 5D */	bl _restgpr_29
/* 8002F0D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002F0D4  7C 08 03 A6 */	mtlr r0
/* 8002F0D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8002F0DC  4E 80 00 20 */	blr 
