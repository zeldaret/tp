lbl_8059DD1C:
/* 8059DD1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059DD20  7C 08 02 A6 */	mflr r0
/* 8059DD24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059DD28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059DD2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8059DD30  41 82 00 30 */	beq lbl_8059DD60
/* 8059DD34  3C 60 80 5A */	lis r3, __vt__10dCcD_GStts@ha
/* 8059DD38  38 03 E0 7C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8059DD3C  90 1F 00 00 */	stw r0, 0(r31)
/* 8059DD40  41 82 00 10 */	beq lbl_8059DD50
/* 8059DD44  3C 60 80 5A */	lis r3, __vt__10cCcD_GStts@ha
/* 8059DD48  38 03 E0 70 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8059DD4C  90 1F 00 00 */	stw r0, 0(r31)
lbl_8059DD50:
/* 8059DD50  7C 80 07 35 */	extsh. r0, r4
/* 8059DD54  40 81 00 0C */	ble lbl_8059DD60
/* 8059DD58  7F E3 FB 78 */	mr r3, r31
/* 8059DD5C  4B D3 0F E0 */	b __dl__FPv
lbl_8059DD60:
/* 8059DD60  7F E3 FB 78 */	mr r3, r31
/* 8059DD64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059DD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059DD6C  7C 08 03 A6 */	mtlr r0
/* 8059DD70  38 21 00 10 */	addi r1, r1, 0x10
/* 8059DD74  4E 80 00 20 */	blr 
