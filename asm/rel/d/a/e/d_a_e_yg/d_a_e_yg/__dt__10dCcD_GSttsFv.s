lbl_807FBFE4:
/* 807FBFE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FBFE8  7C 08 02 A6 */	mflr r0
/* 807FBFEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FBFF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807FBFF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 807FBFF8  41 82 00 30 */	beq lbl_807FC028
/* 807FBFFC  3C 60 80 80 */	lis r3, __vt__10dCcD_GStts@ha /* 0x807FCFB0@ha */
/* 807FC000  38 03 CF B0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x807FCFB0@l */
/* 807FC004  90 1F 00 00 */	stw r0, 0(r31)
/* 807FC008  41 82 00 10 */	beq lbl_807FC018
/* 807FC00C  3C 60 80 80 */	lis r3, __vt__10cCcD_GStts@ha /* 0x807FCFA4@ha */
/* 807FC010  38 03 CF A4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x807FCFA4@l */
/* 807FC014  90 1F 00 00 */	stw r0, 0(r31)
lbl_807FC018:
/* 807FC018  7C 80 07 35 */	extsh. r0, r4
/* 807FC01C  40 81 00 0C */	ble lbl_807FC028
/* 807FC020  7F E3 FB 78 */	mr r3, r31
/* 807FC024  4B AD 2D 19 */	bl __dl__FPv
lbl_807FC028:
/* 807FC028  7F E3 FB 78 */	mr r3, r31
/* 807FC02C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807FC030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FC034  7C 08 03 A6 */	mtlr r0
/* 807FC038  38 21 00 10 */	addi r1, r1, 0x10
/* 807FC03C  4E 80 00 20 */	blr 
