lbl_8048CD68:
/* 8048CD68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048CD6C  7C 08 02 A6 */	mflr r0
/* 8048CD70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048CD74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048CD78  93 C1 00 08 */	stw r30, 8(r1)
/* 8048CD7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8048CD80  7C 9F 23 78 */	mr r31, r4
/* 8048CD84  41 82 00 28 */	beq lbl_8048CDAC
/* 8048CD88  3C 80 80 49 */	lis r4, __vt__15daTag_EvtArea_c@ha
/* 8048CD8C  38 04 CE 98 */	addi r0, r4, __vt__15daTag_EvtArea_c@l
/* 8048CD90  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8048CD94  38 80 00 00 */	li r4, 0
/* 8048CD98  4B B8 BE F4 */	b __dt__10fopAc_ac_cFv
/* 8048CD9C  7F E0 07 35 */	extsh. r0, r31
/* 8048CDA0  40 81 00 0C */	ble lbl_8048CDAC
/* 8048CDA4  7F C3 F3 78 */	mr r3, r30
/* 8048CDA8  4B E4 1F 94 */	b __dl__FPv
lbl_8048CDAC:
/* 8048CDAC  7F C3 F3 78 */	mr r3, r30
/* 8048CDB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048CDB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048CDB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048CDBC  7C 08 03 A6 */	mtlr r0
/* 8048CDC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048CDC4  4E 80 00 20 */	blr 
