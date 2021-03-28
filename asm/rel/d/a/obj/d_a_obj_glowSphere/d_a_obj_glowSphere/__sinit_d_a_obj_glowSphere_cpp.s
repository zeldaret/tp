lbl_80BFA7D8:
/* 80BFA7D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFA7DC  7C 08 02 A6 */	mflr r0
/* 80BFA7E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFA7E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFA7E8  3C 60 80 C0 */	lis r3, lit_1109@ha
/* 80BFA7EC  3B E3 AB A8 */	addi r31, r3, lit_1109@l
/* 80BFA7F0  38 7F 00 4C */	addi r3, r31, 0x4c
/* 80BFA7F4  4B FF EB 59 */	bl __ct__14daGlwSph_HIO_cFv
/* 80BFA7F8  3C 80 80 C0 */	lis r4, __dt__14daGlwSph_HIO_cFv@ha
/* 80BFA7FC  38 84 A7 6C */	addi r4, r4, __dt__14daGlwSph_HIO_cFv@l
/* 80BFA800  38 BF 00 40 */	addi r5, r31, 0x40
/* 80BFA804  4B FF EA D5 */	bl __register_global_object
/* 80BFA808  3C 60 80 C0 */	lis r3, mCcDSph__10daGlwSph_c@ha
/* 80BFA80C  38 63 AA 08 */	addi r3, r3, mCcDSph__10daGlwSph_c@l
/* 80BFA810  38 A3 FF FC */	addi r5, r3, -4
/* 80BFA814  3C 60 80 C0 */	lis r3, mCcDObjInfo__10daGlwSph_c@ha
/* 80BFA818  38 63 A9 78 */	addi r3, r3, mCcDObjInfo__10daGlwSph_c@l
/* 80BFA81C  38 83 FF FC */	addi r4, r3, -4
/* 80BFA820  38 00 00 06 */	li r0, 6
/* 80BFA824  7C 09 03 A6 */	mtctr r0
lbl_80BFA828:
/* 80BFA828  80 64 00 04 */	lwz r3, 4(r4)
/* 80BFA82C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80BFA830  90 65 00 04 */	stw r3, 4(r5)
/* 80BFA834  94 05 00 08 */	stwu r0, 8(r5)
/* 80BFA838  42 00 FF F0 */	bdnz lbl_80BFA828
/* 80BFA83C  38 7F 00 64 */	addi r3, r31, 0x64
/* 80BFA840  3C 80 80 C0 */	lis r4, __ct__16_GlSph_LstInfo_cFv@ha
/* 80BFA844  38 84 A9 3C */	addi r4, r4, __ct__16_GlSph_LstInfo_cFv@l
/* 80BFA848  3C A0 80 C0 */	lis r5, __dt__16_GlSph_LstInfo_cFv@ha
/* 80BFA84C  38 A5 A9 00 */	addi r5, r5, __dt__16_GlSph_LstInfo_cFv@l
/* 80BFA850  38 C0 00 08 */	li r6, 8
/* 80BFA854  38 E0 00 78 */	li r7, 0x78
/* 80BFA858  38 63 00 04 */	addi r3, r3, 4
/* 80BFA85C  4B 76 75 04 */	b __construct_array
/* 80BFA860  38 00 00 00 */	li r0, 0
/* 80BFA864  90 1F 00 64 */	stw r0, 0x64(r31)
/* 80BFA868  38 7F 00 64 */	addi r3, r31, 0x64
/* 80BFA86C  3C 80 80 C0 */	lis r4, __dt__12_GlSph_Mng_cFv@ha
/* 80BFA870  38 84 A8 90 */	addi r4, r4, __dt__12_GlSph_Mng_cFv@l
/* 80BFA874  38 BF 00 58 */	addi r5, r31, 0x58
/* 80BFA878  4B FF EA 61 */	bl __register_global_object
/* 80BFA87C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFA880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFA884  7C 08 03 A6 */	mtlr r0
/* 80BFA888  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFA88C  4E 80 00 20 */	blr 
