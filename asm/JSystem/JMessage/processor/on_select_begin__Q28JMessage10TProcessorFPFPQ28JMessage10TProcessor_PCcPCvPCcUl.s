lbl_802A7E38:
/* 802A7E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A7E3C  7C 08 02 A6 */	mflr r0
/* 802A7E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A7E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A7E48  93 C1 00 08 */	stw r30, 8(r1)
/* 802A7E4C  7C 7E 1B 78 */	mr r30, r3
/* 802A7E50  7C FF 3B 78 */	mr r31, r7
/* 802A7E54  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802A7E58  28 00 00 04 */	cmplwi r0, 4
/* 802A7E5C  40 80 00 68 */	bge lbl_802A7EC4
/* 802A7E60  3C E0 80 2B */	lis r7, process_onCharacterEnd_select___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@ha /* 0x802A82F4@ha */
/* 802A7E64  38 07 82 F4 */	addi r0, r7, process_onCharacterEnd_select___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@l /* 0x802A82F4@l */
/* 802A7E68  90 1E 00 24 */	stw r0, 0x24(r30)
/* 802A7E6C  90 9E 00 28 */	stw r4, 0x28(r30)
/* 802A7E70  90 DE 00 2C */	stw r6, 0x2c(r30)
/* 802A7E74  90 BE 00 30 */	stw r5, 0x30(r30)
/* 802A7E78  93 FE 00 34 */	stw r31, 0x34(r30)
/* 802A7E7C  7C 8C 23 78 */	mr r12, r4
/* 802A7E80  7D 89 03 A6 */	mtctr r12
/* 802A7E84  4E 80 04 21 */	bctrl 
/* 802A7E88  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 802A7E8C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 802A7E90  54 00 10 3A */	slwi r0, r0, 2
/* 802A7E94  7C 9E 02 14 */	add r4, r30, r0
/* 802A7E98  90 A4 00 14 */	stw r5, 0x14(r4)
/* 802A7E9C  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 802A7EA0  38 04 00 01 */	addi r0, r4, 1
/* 802A7EA4  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802A7EA8  90 7E 00 0C */	stw r3, 0xc(r30)
/* 802A7EAC  7F C3 F3 78 */	mr r3, r30
/* 802A7EB0  7F E4 FB 78 */	mr r4, r31
/* 802A7EB4  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A7EB8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802A7EBC  7D 89 03 A6 */	mtctr r12
/* 802A7EC0  4E 80 04 21 */	bctrl 
lbl_802A7EC4:
/* 802A7EC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A7EC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A7ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A7ED0  7C 08 03 A6 */	mtlr r0
/* 802A7ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A7ED8  4E 80 00 20 */	blr 
