lbl_8079CD64:
/* 8079CD64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079CD68  7C 08 02 A6 */	mflr r0
/* 8079CD6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079CD70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8079CD74  93 C1 00 08 */	stw r30, 8(r1)
/* 8079CD78  7C 7E 1B 79 */	or. r30, r3, r3
/* 8079CD7C  7C 9F 23 78 */	mr r31, r4
/* 8079CD80  41 82 00 38 */	beq lbl_8079CDB8
/* 8079CD84  3C 80 80 7A */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8079DAF8@ha */
/* 8079CD88  38 84 DA F8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8079DAF8@l */
/* 8079CD8C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8079CD90  38 04 00 0C */	addi r0, r4, 0xc
/* 8079CD94  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8079CD98  38 04 00 18 */	addi r0, r4, 0x18
/* 8079CD9C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8079CDA0  38 80 00 00 */	li r4, 0
/* 8079CDA4  4B 8D 91 F1 */	bl __dt__9dBgS_AcchFv
/* 8079CDA8  7F E0 07 35 */	extsh. r0, r31
/* 8079CDAC  40 81 00 0C */	ble lbl_8079CDB8
/* 8079CDB0  7F C3 F3 78 */	mr r3, r30
/* 8079CDB4  4B B3 1F 89 */	bl __dl__FPv
lbl_8079CDB8:
/* 8079CDB8  7F C3 F3 78 */	mr r3, r30
/* 8079CDBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8079CDC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8079CDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079CDC8  7C 08 03 A6 */	mtlr r0
/* 8079CDCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8079CDD0  4E 80 00 20 */	blr 
