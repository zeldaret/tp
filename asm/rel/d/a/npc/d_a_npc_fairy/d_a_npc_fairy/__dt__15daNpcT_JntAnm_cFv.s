lbl_809B87A0:
/* 809B87A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B87A4  7C 08 02 A6 */	mflr r0
/* 809B87A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B87AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B87B0  93 C1 00 08 */	stw r30, 8(r1)
/* 809B87B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B87B8  7C 9E 23 78 */	mr r30, r4
/* 809B87BC  41 82 00 C4 */	beq lbl_809B8880
/* 809B87C0  3C 60 80 9C */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x809BA310@ha */
/* 809B87C4  38 03 A3 10 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x809BA310@l */
/* 809B87C8  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 809B87CC  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 809B87D0  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha /* 0x809B2250@ha */
/* 809B87D4  38 84 22 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809B2250@l */
/* 809B87D8  38 A0 00 0C */	li r5, 0xc
/* 809B87DC  38 C0 00 03 */	li r6, 3
/* 809B87E0  4B 9A 95 09 */	bl __destroy_arr
/* 809B87E4  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 809B87E8  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha /* 0x809B2250@ha */
/* 809B87EC  38 84 22 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809B2250@l */
/* 809B87F0  38 A0 00 0C */	li r5, 0xc
/* 809B87F4  38 C0 00 03 */	li r6, 3
/* 809B87F8  4B 9A 94 F1 */	bl __destroy_arr
/* 809B87FC  38 7F 00 9C */	addi r3, r31, 0x9c
/* 809B8800  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha /* 0x809B2250@ha */
/* 809B8804  38 84 22 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809B2250@l */
/* 809B8808  38 A0 00 0C */	li r5, 0xc
/* 809B880C  38 C0 00 03 */	li r6, 3
/* 809B8810  4B 9A 94 D9 */	bl __destroy_arr
/* 809B8814  38 7F 00 78 */	addi r3, r31, 0x78
/* 809B8818  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha /* 0x809B2250@ha */
/* 809B881C  38 84 22 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809B2250@l */
/* 809B8820  38 A0 00 0C */	li r5, 0xc
/* 809B8824  38 C0 00 03 */	li r6, 3
/* 809B8828  4B 9A 94 C1 */	bl __destroy_arr
/* 809B882C  38 7F 00 54 */	addi r3, r31, 0x54
/* 809B8830  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha /* 0x809B2250@ha */
/* 809B8834  38 84 22 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809B2250@l */
/* 809B8838  38 A0 00 0C */	li r5, 0xc
/* 809B883C  38 C0 00 03 */	li r6, 3
/* 809B8840  4B 9A 94 A9 */	bl __destroy_arr
/* 809B8844  38 7F 00 30 */	addi r3, r31, 0x30
/* 809B8848  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha /* 0x809B2250@ha */
/* 809B884C  38 84 22 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809B2250@l */
/* 809B8850  38 A0 00 0C */	li r5, 0xc
/* 809B8854  38 C0 00 03 */	li r6, 3
/* 809B8858  4B 9A 94 91 */	bl __destroy_arr
/* 809B885C  28 1F 00 00 */	cmplwi r31, 0
/* 809B8860  41 82 00 10 */	beq lbl_809B8870
/* 809B8864  3C 60 80 9C */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809BA304@ha */
/* 809B8868  38 03 A3 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809BA304@l */
/* 809B886C  90 1F 00 04 */	stw r0, 4(r31)
lbl_809B8870:
/* 809B8870  7F C0 07 35 */	extsh. r0, r30
/* 809B8874  40 81 00 0C */	ble lbl_809B8880
/* 809B8878  7F E3 FB 78 */	mr r3, r31
/* 809B887C  4B 91 64 C1 */	bl __dl__FPv
lbl_809B8880:
/* 809B8880  7F E3 FB 78 */	mr r3, r31
/* 809B8884  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B8888  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B888C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B8890  7C 08 03 A6 */	mtlr r0
/* 809B8894  38 21 00 10 */	addi r1, r1, 0x10
/* 809B8898  4E 80 00 20 */	blr 
