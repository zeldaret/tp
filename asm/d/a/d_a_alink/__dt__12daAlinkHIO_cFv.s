lbl_80140C10:
/* 80140C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80140C14  7C 08 02 A6 */	mflr r0
/* 80140C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80140C1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80140C20  93 C1 00 08 */	stw r30, 8(r1)
/* 80140C24  7C 7E 1B 79 */	or. r30, r3, r3
/* 80140C28  7C 9F 23 78 */	mr r31, r4
/* 80140C2C  41 82 00 38 */	beq lbl_80140C64
/* 80140C30  3C 60 80 3B */	lis r3, __vt__12daAlinkHIO_c@ha /* 0x803B321C@ha */
/* 80140C34  38 03 32 1C */	addi r0, r3, __vt__12daAlinkHIO_c@l /* 0x803B321C@l */
/* 80140C38  90 1E 00 00 */	stw r0, 0(r30)
/* 80140C3C  38 7E 00 4B */	addi r3, r30, 0x4b
/* 80140C40  38 80 FF FF */	li r4, -1
/* 80140C44  4B FF FF 55 */	bl __dt__17daAlinkHIO_wolf_cFv
/* 80140C48  38 7E 00 0C */	addi r3, r30, 0xc
/* 80140C4C  38 80 FF FF */	li r4, -1
/* 80140C50  4B FF FF 85 */	bl __dt__16daAlinkHIO_cut_cFv
/* 80140C54  7F E0 07 35 */	extsh. r0, r31
/* 80140C58  40 81 00 0C */	ble lbl_80140C64
/* 80140C5C  7F C3 F3 78 */	mr r3, r30
/* 80140C60  48 18 E0 DD */	bl __dl__FPv
lbl_80140C64:
/* 80140C64  7F C3 F3 78 */	mr r3, r30
/* 80140C68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80140C6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80140C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80140C74  7C 08 03 A6 */	mtlr r0
/* 80140C78  38 21 00 10 */	addi r1, r1, 0x10
/* 80140C7C  4E 80 00 20 */	blr 
