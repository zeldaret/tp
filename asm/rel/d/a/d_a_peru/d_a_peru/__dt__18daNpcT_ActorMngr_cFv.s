lbl_80D4B008:
/* 80D4B008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4B00C  7C 08 02 A6 */	mflr r0
/* 80D4B010  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4B014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4B018  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4B01C  41 82 00 1C */	beq lbl_80D4B038
/* 80D4B020  3C A0 80 D5 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80D4C6F0@ha */
/* 80D4B024  38 05 C6 F0 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80D4C6F0@l */
/* 80D4B028  90 1F 00 04 */	stw r0, 4(r31)
/* 80D4B02C  7C 80 07 35 */	extsh. r0, r4
/* 80D4B030  40 81 00 08 */	ble lbl_80D4B038
/* 80D4B034  4B 58 3D 09 */	bl __dl__FPv
lbl_80D4B038:
/* 80D4B038  7F E3 FB 78 */	mr r3, r31
/* 80D4B03C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4B040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4B044  7C 08 03 A6 */	mtlr r0
/* 80D4B048  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4B04C  4E 80 00 20 */	blr 
