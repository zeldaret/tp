lbl_8075F964:
/* 8075F964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8075F968  7C 08 02 A6 */	mflr r0
/* 8075F96C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8075F970  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8075F974  7C 7F 1B 78 */	mr r31, r3
/* 8075F978  88 03 07 D4 */	lbz r0, 0x7d4(r3)
/* 8075F97C  28 00 00 0A */	cmplwi r0, 0xa
/* 8075F980  40 82 00 0C */	bne lbl_8075F98C
/* 8075F984  38 60 00 01 */	li r3, 1
/* 8075F988  48 00 00 C4 */	b lbl_8075FA4C
lbl_8075F98C:
/* 8075F98C  88 7F 07 D0 */	lbz r3, 0x7d0(r31)
/* 8075F990  28 03 00 00 */	cmplwi r3, 0
/* 8075F994  41 82 00 0C */	beq lbl_8075F9A0
/* 8075F998  38 03 FF FF */	addi r0, r3, -1
/* 8075F99C  98 1F 07 D0 */	stb r0, 0x7d0(r31)
lbl_8075F9A0:
/* 8075F9A0  88 7F 07 D1 */	lbz r3, 0x7d1(r31)
/* 8075F9A4  28 03 00 00 */	cmplwi r3, 0
/* 8075F9A8  41 82 00 0C */	beq lbl_8075F9B4
/* 8075F9AC  38 03 FF FF */	addi r0, r3, -1
/* 8075F9B0  98 1F 07 D1 */	stb r0, 0x7d1(r31)
lbl_8075F9B4:
/* 8075F9B4  88 7F 07 D2 */	lbz r3, 0x7d2(r31)
/* 8075F9B8  28 03 00 00 */	cmplwi r3, 0
/* 8075F9BC  41 82 00 0C */	beq lbl_8075F9C8
/* 8075F9C0  38 03 FF FF */	addi r0, r3, -1
/* 8075F9C4  98 1F 07 D2 */	stb r0, 0x7d2(r31)
lbl_8075F9C8:
/* 8075F9C8  88 7F 07 D3 */	lbz r3, 0x7d3(r31)
/* 8075F9CC  28 03 00 00 */	cmplwi r3, 0
/* 8075F9D0  41 82 00 0C */	beq lbl_8075F9DC
/* 8075F9D4  38 03 FF FF */	addi r0, r3, -1
/* 8075F9D8  98 1F 07 D3 */	stb r0, 0x7d3(r31)
lbl_8075F9DC:
/* 8075F9DC  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 8075F9E0  28 00 00 14 */	cmplwi r0, 0x14
/* 8075F9E4  41 82 00 28 */	beq lbl_8075FA0C
/* 8075F9E8  28 00 00 15 */	cmplwi r0, 0x15
/* 8075F9EC  41 82 00 20 */	beq lbl_8075FA0C
/* 8075F9F0  28 00 00 1E */	cmplwi r0, 0x1e
/* 8075F9F4  41 82 00 18 */	beq lbl_8075FA0C
/* 8075F9F8  28 00 00 28 */	cmplwi r0, 0x28
/* 8075F9FC  41 82 00 10 */	beq lbl_8075FA0C
/* 8075FA00  7F E3 FB 78 */	mr r3, r31
/* 8075FA04  4B FF F9 A5 */	bl action__8daE_PZ_cFv
/* 8075FA08  48 00 00 1C */	b lbl_8075FA24
lbl_8075FA0C:
/* 8075FA0C  7F E3 FB 78 */	mr r3, r31
/* 8075FA10  4B FF FB 01 */	bl action_fire__8daE_PZ_cFv
/* 8075FA14  7F E3 FB 78 */	mr r3, r31
/* 8075FA18  4B FF FB 61 */	bl fire_mtx_set__8daE_PZ_cFv
/* 8075FA1C  38 60 00 01 */	li r3, 1
/* 8075FA20  48 00 00 2C */	b lbl_8075FA4C
lbl_8075FA24:
/* 8075FA24  88 1F 05 46 */	lbz r0, 0x546(r31)
/* 8075FA28  28 00 00 00 */	cmplwi r0, 0
/* 8075FA2C  40 82 00 0C */	bne lbl_8075FA38
/* 8075FA30  38 60 00 01 */	li r3, 1
/* 8075FA34  48 00 00 18 */	b lbl_8075FA4C
lbl_8075FA38:
/* 8075FA38  7F E3 FB 78 */	mr r3, r31
/* 8075FA3C  4B FF FC F9 */	bl mtx_set__8daE_PZ_cFv
/* 8075FA40  7F E3 FB 78 */	mr r3, r31
/* 8075FA44  4B FF FD A5 */	bl cc_set__8daE_PZ_cFv
/* 8075FA48  38 60 00 01 */	li r3, 1
lbl_8075FA4C:
/* 8075FA4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8075FA50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8075FA54  7C 08 03 A6 */	mtlr r0
/* 8075FA58  38 21 00 10 */	addi r1, r1, 0x10
/* 8075FA5C  4E 80 00 20 */	blr 
