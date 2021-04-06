lbl_805AD7B4:
/* 805AD7B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AD7B8  7C 08 02 A6 */	mflr r0
/* 805AD7BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AD7C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AD7C4  7C 7F 1B 78 */	mr r31, r3
/* 805AD7C8  88 63 08 B5 */	lbz r3, 0x8b5(r3)
/* 805AD7CC  28 03 00 00 */	cmplwi r3, 0
/* 805AD7D0  41 82 00 0C */	beq lbl_805AD7DC
/* 805AD7D4  38 03 FF FF */	addi r0, r3, -1
/* 805AD7D8  98 1F 08 B5 */	stb r0, 0x8b5(r31)
lbl_805AD7DC:
/* 805AD7DC  88 7F 08 B6 */	lbz r3, 0x8b6(r31)
/* 805AD7E0  28 03 00 00 */	cmplwi r3, 0
/* 805AD7E4  41 82 00 0C */	beq lbl_805AD7F0
/* 805AD7E8  38 03 FF FF */	addi r0, r3, -1
/* 805AD7EC  98 1F 08 B6 */	stb r0, 0x8b6(r31)
lbl_805AD7F0:
/* 805AD7F0  7F E3 FB 78 */	mr r3, r31
/* 805AD7F4  4B FF D9 49 */	bl action__9daL7ODR_cFv
/* 805AD7F8  7F E3 FB 78 */	mr r3, r31
/* 805AD7FC  4B FF DA 0D */	bl dr_action__9daL7ODR_cFv
/* 805AD800  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805AD804  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 805AD808  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 805AD80C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 805AD810  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 805AD814  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 805AD818  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805AD81C  7C 03 07 74 */	extsb r3, r0
/* 805AD820  4B A7 F8 4D */	bl dComIfGp_getReverb__Fi
/* 805AD824  7C 65 1B 78 */	mr r5, r3
/* 805AD828  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD82C  38 80 00 00 */	li r4, 0
/* 805AD830  4B A6 38 81 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 805AD834  7F E3 FB 78 */	mr r3, r31
/* 805AD838  4B FF D9 F9 */	bl mtx_set__9daL7ODR_cFv
/* 805AD83C  38 60 00 01 */	li r3, 1
/* 805AD840  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AD844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AD848  7C 08 03 A6 */	mtlr r0
/* 805AD84C  38 21 00 10 */	addi r1, r1, 0x10
/* 805AD850  4E 80 00 20 */	blr 
