lbl_80C822DC:
/* 80C822DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C822E0  7C 08 02 A6 */	mflr r0
/* 80C822E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C822E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C822EC  7C 7F 1B 78 */	mr r31, r3
/* 80C822F0  38 00 00 01 */	li r0, 1
/* 80C822F4  98 03 10 24 */	stb r0, 0x1024(r3)
/* 80C822F8  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80C822FC  4B 5E 5E D9 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C82300  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C82304  41 82 00 18 */	beq lbl_80C8231C
/* 80C82308  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8230C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C82310  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C82314  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C82318  4B 3F 1F 39 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C8231C:
/* 80C8231C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C82320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C82324  7C 08 03 A6 */	mtlr r0
/* 80C82328  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8232C  4E 80 00 20 */	blr 
