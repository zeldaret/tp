lbl_8095CD8C:
/* 8095CD8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095CD90  7C 08 02 A6 */	mflr r0
/* 8095CD94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095CD98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095CD9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8095CDA0  41 82 00 1C */	beq lbl_8095CDBC
/* 8095CDA4  3C A0 80 96 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x8095DCFC@ha */
/* 8095CDA8  38 05 DC FC */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x8095DCFC@l */
/* 8095CDAC  90 1F 00 04 */	stw r0, 4(r31)
/* 8095CDB0  7C 80 07 35 */	extsh. r0, r4
/* 8095CDB4  40 81 00 08 */	ble lbl_8095CDBC
/* 8095CDB8  4B 97 1F 85 */	bl __dl__FPv
lbl_8095CDBC:
/* 8095CDBC  7F E3 FB 78 */	mr r3, r31
/* 8095CDC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095CDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095CDC8  7C 08 03 A6 */	mtlr r0
/* 8095CDCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8095CDD0  4E 80 00 20 */	blr 
