lbl_8045AAF0:
/* 8045AAF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045AAF4  7C 08 02 A6 */	mflr r0
/* 8045AAF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045AAFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045AB00  7C 7F 1B 78 */	mr r31, r3
/* 8045AB04  88 03 0C C8 */	lbz r0, 0xcc8(r3)
/* 8045AB08  28 00 00 00 */	cmplwi r0, 0
/* 8045AB0C  40 82 00 20 */	bne lbl_8045AB2C
/* 8045AB10  88 1F 0C D2 */	lbz r0, 0xcd2(r31)
/* 8045AB14  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8045AB18  3C 80 80 46 */	lis r4, mTgSetFunc__9daBgObj_c@ha /* 0x8045CC98@ha */
/* 8045AB1C  38 04 CC 98 */	addi r0, r4, mTgSetFunc__9daBgObj_c@l /* 0x8045CC98@l */
/* 8045AB20  7D 80 2A 14 */	add r12, r0, r5
/* 8045AB24  4B F0 75 61 */	bl __ptmf_scall
/* 8045AB28  60 00 00 00 */	nop 
lbl_8045AB2C:
/* 8045AB2C  88 1F 0C E6 */	lbz r0, 0xce6(r31)
/* 8045AB30  28 00 00 01 */	cmplwi r0, 1
/* 8045AB34  40 82 00 38 */	bne lbl_8045AB6C
/* 8045AB38  80 1F 06 40 */	lwz r0, 0x640(r31)
/* 8045AB3C  38 A0 00 00 */	li r5, 0
/* 8045AB40  38 60 00 00 */	li r3, 0
/* 8045AB44  60 04 00 40 */	ori r4, r0, 0x40
/* 8045AB48  48 00 00 14 */	b lbl_8045AB5C
lbl_8045AB4C:
/* 8045AB4C  38 03 06 40 */	addi r0, r3, 0x640
/* 8045AB50  7C 9F 01 2E */	stwx r4, r31, r0
/* 8045AB54  38 A5 00 01 */	addi r5, r5, 1
/* 8045AB58  38 63 01 5C */	addi r3, r3, 0x15c
lbl_8045AB5C:
/* 8045AB5C  88 1F 0C C4 */	lbz r0, 0xcc4(r31)
/* 8045AB60  7C 05 00 00 */	cmpw r5, r0
/* 8045AB64  41 80 FF E8 */	blt lbl_8045AB4C
/* 8045AB68  90 9F 0B B0 */	stw r4, 0xbb0(r31)
lbl_8045AB6C:
/* 8045AB6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045AB70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045AB74  7C 08 03 A6 */	mtlr r0
/* 8045AB78  38 21 00 10 */	addi r1, r1, 0x10
/* 8045AB7C  4E 80 00 20 */	blr 
