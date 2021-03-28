lbl_80BB34C8:
/* 80BB34C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB34CC  7C 08 02 A6 */	mflr r0
/* 80BB34D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB34D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB34D8  3C 60 80 BB */	lis r3, lit_1109@ha
/* 80BB34DC  3B E3 3E E8 */	addi r31, r3, lit_1109@l
/* 80BB34E0  3C 60 80 BB */	lis r3, cNullVec__6Z2Calc@ha
/* 80BB34E4  38 83 3A 74 */	addi r4, r3, cNullVec__6Z2Calc@l
/* 80BB34E8  80 04 00 28 */	lwz r0, 0x28(r4)
/* 80BB34EC  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80BB34F0  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 80BB34F4  38 64 00 3C */	addi r3, r4, 0x3c
/* 80BB34F8  90 03 00 04 */	stw r0, 4(r3)
/* 80BB34FC  80 04 00 30 */	lwz r0, 0x30(r4)
/* 80BB3500  90 03 00 08 */	stw r0, 8(r3)
/* 80BB3504  80 04 00 34 */	lwz r0, 0x34(r4)
/* 80BB3508  90 03 00 0C */	stw r0, 0xc(r3)
/* 80BB350C  80 04 00 38 */	lwz r0, 0x38(r4)
/* 80BB3510  90 03 00 10 */	stw r0, 0x10(r3)
/* 80BB3514  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80BB3518  3C 80 80 BB */	lis r4, __ct__14dBgS_ObjGndChkFv@ha
/* 80BB351C  38 84 37 08 */	addi r4, r4, __ct__14dBgS_ObjGndChkFv@l
/* 80BB3520  3C A0 80 BB */	lis r5, __dt__14dBgS_ObjGndChkFv@ha
/* 80BB3524  38 A5 36 90 */	addi r5, r5, __dt__14dBgS_ObjGndChkFv@l
/* 80BB3528  38 C0 00 54 */	li r6, 0x54
/* 80BB352C  38 E0 00 17 */	li r7, 0x17
/* 80BB3530  4B 7A E8 30 */	b __construct_array
/* 80BB3534  38 60 00 00 */	li r3, 0
/* 80BB3538  3C 80 80 BB */	lis r4, __arraydtor_5100@ha
/* 80BB353C  38 84 36 58 */	addi r4, r4, __arraydtor_5100@l
/* 80BB3540  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 80BB3544  4B FF AD B5 */	bl __register_global_object
/* 80BB3548  38 7F 08 4C */	addi r3, r31, 0x84c
/* 80BB354C  4B 4C 5C 18 */	b __ct__11dBgS_WtrChkFv
/* 80BB3550  3C 80 80 BB */	lis r4, __dt__11dBgS_WtrChkFv@ha
/* 80BB3554  38 84 35 E0 */	addi r4, r4, __dt__11dBgS_WtrChkFv@l
/* 80BB3558  38 BF 08 40 */	addi r5, r31, 0x840
/* 80BB355C  4B FF AD 9D */	bl __register_global_object
/* 80BB3560  38 7F 08 AC */	addi r3, r31, 0x8ac
/* 80BB3564  3C 80 80 07 */	lis r4, __ct__14dBgS_ObjLinChkFv@ha
/* 80BB3568  38 84 7F 5C */	addi r4, r4, __ct__14dBgS_ObjLinChkFv@l
/* 80BB356C  3C A0 80 07 */	lis r5, __dt__14dBgS_ObjLinChkFv@ha
/* 80BB3570  38 A5 7F B8 */	addi r5, r5, __dt__14dBgS_ObjLinChkFv@l
/* 80BB3574  38 C0 00 70 */	li r6, 0x70
/* 80BB3578  38 E0 00 17 */	li r7, 0x17
/* 80BB357C  4B 7A E7 E4 */	b __construct_array
/* 80BB3580  38 60 00 00 */	li r3, 0
/* 80BB3584  3C 80 80 BB */	lis r4, __arraydtor_5103@ha
/* 80BB3588  38 84 35 A8 */	addi r4, r4, __arraydtor_5103@l
/* 80BB358C  38 BF 08 A0 */	addi r5, r31, 0x8a0
/* 80BB3590  4B FF AD 69 */	bl __register_global_object
/* 80BB3594  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB3598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB359C  7C 08 03 A6 */	mtlr r0
/* 80BB35A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB35A4  4E 80 00 20 */	blr 
