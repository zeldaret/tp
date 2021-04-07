lbl_80120534:
/* 80120534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80120538  7C 08 02 A6 */	mflr r0
/* 8012053C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80120540  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80120544  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80120548  41 82 00 18 */	beq lbl_80120560
/* 8012054C  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlAutoJump_c0@ha /* 0x8038F0A8@ha */
/* 80120550  38 A5 F0 A8 */	addi r5, r5, m__24daAlinkHIO_wlAutoJump_c0@l /* 0x8038F0A8@l */
/* 80120554  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 80120558  48 00 E8 79 */	bl procWolfFallInit__9daAlink_cFif
/* 8012055C  48 00 00 14 */	b lbl_80120570
lbl_80120560:
/* 80120560  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 80120564  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 80120568  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 8012056C  4B FA 64 DD */	bl procFallInit__9daAlink_cFif
lbl_80120570:
/* 80120570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80120574  7C 08 03 A6 */	mtlr r0
/* 80120578  38 21 00 10 */	addi r1, r1, 0x10
/* 8012057C  4E 80 00 20 */	blr 
