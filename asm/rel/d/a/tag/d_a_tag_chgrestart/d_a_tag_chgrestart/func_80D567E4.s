lbl_80D567E4:
/* 80D567E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D567E8  7C 08 02 A6 */	mflr r0
/* 80D567EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D567F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D567F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D567F8  7C 7F 1B 78 */	mr r31, r3
/* 80D567FC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D56800  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D56804  40 82 00 40 */	bne lbl_80D56844
/* 80D56808  7F E0 FB 79 */	or. r0, r31, r31
/* 80D5680C  41 82 00 2C */	beq lbl_80D56838
/* 80D56810  7C 1E 03 78 */	mr r30, r0
/* 80D56814  4B 2C 23 51 */	bl __ct__10fopAc_ac_cFv
/* 80D56818  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D5681C  3C 80 80 D5 */	lis r4, __ct__4cXyzFv@ha /* 0x80D568B4@ha */
/* 80D56820  38 84 68 B4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80D568B4@l */
/* 80D56824  3C A0 80 D5 */	lis r5, __dt__4cXyzFv@ha /* 0x80D56878@ha */
/* 80D56828  38 A5 68 78 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80D56878@l */
/* 80D5682C  38 C0 00 0C */	li r6, 0xc
/* 80D56830  38 E0 00 04 */	li r7, 4
/* 80D56834  4B 60 B5 2D */	bl __construct_array
lbl_80D56838:
/* 80D56838  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D5683C  60 00 00 08 */	ori r0, r0, 8
/* 80D56840  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D56844:
/* 80D56844  7F E3 FB 78 */	mr r3, r31
/* 80D56848  4B FF FF 11 */	bl Create__17daTagChgRestart_cFv
/* 80D5684C  2C 03 00 00 */	cmpwi r3, 0
/* 80D56850  40 82 00 0C */	bne lbl_80D5685C
/* 80D56854  38 60 00 05 */	li r3, 5
/* 80D56858  48 00 00 08 */	b lbl_80D56860
lbl_80D5685C:
/* 80D5685C  38 60 00 04 */	li r3, 4
lbl_80D56860:
/* 80D56860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D56864  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D56868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5686C  7C 08 03 A6 */	mtlr r0
/* 80D56870  38 21 00 10 */	addi r1, r1, 0x10
/* 80D56874  4E 80 00 20 */	blr 
