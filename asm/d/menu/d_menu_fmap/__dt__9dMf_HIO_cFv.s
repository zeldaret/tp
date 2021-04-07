lbl_801CDA2C:
/* 801CDA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CDA30  7C 08 02 A6 */	mflr r0
/* 801CDA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CDA38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CDA3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 801CDA40  41 82 00 1C */	beq lbl_801CDA5C
/* 801CDA44  3C A0 80 3C */	lis r5, __vt__9dMf_HIO_c@ha /* 0x803BD670@ha */
/* 801CDA48  38 05 D6 70 */	addi r0, r5, __vt__9dMf_HIO_c@l /* 0x803BD670@l */
/* 801CDA4C  90 1F 00 00 */	stw r0, 0(r31)
/* 801CDA50  7C 80 07 35 */	extsh. r0, r4
/* 801CDA54  40 81 00 08 */	ble lbl_801CDA5C
/* 801CDA58  48 10 12 E5 */	bl __dl__FPv
lbl_801CDA5C:
/* 801CDA5C  7F E3 FB 78 */	mr r3, r31
/* 801CDA60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CDA64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CDA68  7C 08 03 A6 */	mtlr r0
/* 801CDA6C  38 21 00 10 */	addi r1, r1, 0x10
/* 801CDA70  4E 80 00 20 */	blr 
