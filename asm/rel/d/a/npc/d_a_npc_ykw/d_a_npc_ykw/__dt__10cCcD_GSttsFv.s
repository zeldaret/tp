lbl_80B6682C:
/* 80B6682C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B66830  7C 08 02 A6 */	mflr r0
/* 80B66834  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B66838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6683C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B66840  41 82 00 1C */	beq lbl_80B6685C
/* 80B66844  3C A0 80 B7 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80B68C30@ha */
/* 80B66848  38 05 8C 30 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80B68C30@l */
/* 80B6684C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B66850  7C 80 07 35 */	extsh. r0, r4
/* 80B66854  40 81 00 08 */	ble lbl_80B6685C
/* 80B66858  4B 76 84 E5 */	bl __dl__FPv
lbl_80B6685C:
/* 80B6685C  7F E3 FB 78 */	mr r3, r31
/* 80B66860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B66864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B66868  7C 08 03 A6 */	mtlr r0
/* 80B6686C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B66870  4E 80 00 20 */	blr 
