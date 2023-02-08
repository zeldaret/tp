lbl_8004AA34:
/* 8004AA34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004AA38  7C 08 02 A6 */	mflr r0
/* 8004AA3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004AA40  38 A0 00 00 */	li r5, 0
/* 8004AA44  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 8004AA48  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8004AA4C  41 82 00 18 */	beq lbl_8004AA64
/* 8004AA50  80 64 00 D0 */	lwz r3, 0xd0(r4)
/* 8004AA54  80 04 00 DC */	lwz r0, 0xdc(r4)
/* 8004AA58  7C 03 02 15 */	add. r0, r3, r0
/* 8004AA5C  40 82 00 08 */	bne lbl_8004AA64
/* 8004AA60  38 A0 00 01 */	li r5, 1
lbl_8004AA64:
/* 8004AA64  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8004AA68  41 82 00 28 */	beq lbl_8004AA90
/* 8004AA6C  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 8004AA70  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8004AA74  90 04 00 F4 */	stw r0, 0xf4(r4)
/* 8004AA78  38 00 00 00 */	li r0, 0
/* 8004AA7C  90 04 00 EC */	stw r0, 0xec(r4)
/* 8004AA80  90 04 00 F0 */	stw r0, 0xf0(r4)
/* 8004AA84  7C 83 23 78 */	mr r3, r4
/* 8004AA88  48 00 02 09 */	bl resetModel__18dPa_modelEcallBackFP14JPABaseEmitter
/* 8004AA8C  48 00 00 0C */	b lbl_8004AA98
lbl_8004AA90:
/* 8004AA90  7C 83 23 78 */	mr r3, r4
/* 8004AA94  48 00 02 2D */	bl setupModel__18dPa_modelEcallBackFP14JPABaseEmitter
lbl_8004AA98:
/* 8004AA98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004AA9C  7C 08 03 A6 */	mtlr r0
/* 8004AAA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8004AAA4  4E 80 00 20 */	blr 
