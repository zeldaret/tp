lbl_8061A808:
/* 8061A808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061A80C  7C 08 02 A6 */	mflr r0
/* 8061A810  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061A818  7C 7F 1B 79 */	or. r31, r3, r3
/* 8061A81C  41 82 00 1C */	beq lbl_8061A838
/* 8061A820  3C A0 80 62 */	lis r5, __vt__12daB_OB_HIO_c@ha
/* 8061A824  38 05 B4 AC */	addi r0, r5, __vt__12daB_OB_HIO_c@l
/* 8061A828  90 1F 00 00 */	stw r0, 0(r31)
/* 8061A82C  7C 80 07 35 */	extsh. r0, r4
/* 8061A830  40 81 00 08 */	ble lbl_8061A838
/* 8061A834  4B CB 45 08 */	b __dl__FPv
lbl_8061A838:
/* 8061A838  7F E3 FB 78 */	mr r3, r31
/* 8061A83C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061A840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061A844  7C 08 03 A6 */	mtlr r0
/* 8061A848  38 21 00 10 */	addi r1, r1, 0x10
/* 8061A84C  4E 80 00 20 */	blr 
