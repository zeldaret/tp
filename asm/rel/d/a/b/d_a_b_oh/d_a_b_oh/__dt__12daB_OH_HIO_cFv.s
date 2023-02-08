lbl_8061D93C:
/* 8061D93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061D940  7C 08 02 A6 */	mflr r0
/* 8061D944  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061D948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061D94C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8061D950  41 82 00 1C */	beq lbl_8061D96C
/* 8061D954  3C A0 80 62 */	lis r5, __vt__12daB_OH_HIO_c@ha /* 0x8061DB60@ha */
/* 8061D958  38 05 DB 60 */	addi r0, r5, __vt__12daB_OH_HIO_c@l /* 0x8061DB60@l */
/* 8061D95C  90 1F 00 00 */	stw r0, 0(r31)
/* 8061D960  7C 80 07 35 */	extsh. r0, r4
/* 8061D964  40 81 00 08 */	ble lbl_8061D96C
/* 8061D968  4B CB 13 D5 */	bl __dl__FPv
lbl_8061D96C:
/* 8061D96C  7F E3 FB 78 */	mr r3, r31
/* 8061D970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061D974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061D978  7C 08 03 A6 */	mtlr r0
/* 8061D97C  38 21 00 10 */	addi r1, r1, 0x10
/* 8061D980  4E 80 00 20 */	blr 
