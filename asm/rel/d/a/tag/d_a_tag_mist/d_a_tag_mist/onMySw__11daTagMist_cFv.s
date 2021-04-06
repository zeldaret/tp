lbl_8048F2C4:
/* 8048F2C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F2C8  7C 08 02 A6 */	mflr r0
/* 8048F2CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F2D0  7C 65 1B 78 */	mr r5, r3
/* 8048F2D4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048F2D8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8048F2DC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8048F2E0  28 00 00 FF */	cmplwi r0, 0xff
/* 8048F2E4  41 82 00 1C */	beq lbl_8048F300
/* 8048F2E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048F2EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048F2F0  7C 84 02 14 */	add r4, r4, r0
/* 8048F2F4  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 8048F2F8  7C 05 07 74 */	extsb r5, r0
/* 8048F2FC  4B BA 5F 05 */	bl onSwitch__10dSv_info_cFii
lbl_8048F300:
/* 8048F300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F304  7C 08 03 A6 */	mtlr r0
/* 8048F308  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F30C  4E 80 00 20 */	blr 
