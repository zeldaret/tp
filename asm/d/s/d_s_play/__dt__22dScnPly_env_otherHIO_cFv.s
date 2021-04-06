lbl_8025AC0C:
/* 8025AC0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025AC10  7C 08 02 A6 */	mflr r0
/* 8025AC14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025AC18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025AC1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025AC20  41 82 00 1C */	beq lbl_8025AC3C
/* 8025AC24  3C A0 80 3C */	lis r5, __vt__22dScnPly_env_otherHIO_c@ha /* 0x803C3230@ha */
/* 8025AC28  38 05 32 30 */	addi r0, r5, __vt__22dScnPly_env_otherHIO_c@l /* 0x803C3230@l */
/* 8025AC2C  90 1F 00 00 */	stw r0, 0(r31)
/* 8025AC30  7C 80 07 35 */	extsh. r0, r4
/* 8025AC34  40 81 00 08 */	ble lbl_8025AC3C
/* 8025AC38  48 07 41 05 */	bl __dl__FPv
lbl_8025AC3C:
/* 8025AC3C  7F E3 FB 78 */	mr r3, r31
/* 8025AC40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025AC44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025AC48  7C 08 03 A6 */	mtlr r0
/* 8025AC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8025AC50  4E 80 00 20 */	blr 
