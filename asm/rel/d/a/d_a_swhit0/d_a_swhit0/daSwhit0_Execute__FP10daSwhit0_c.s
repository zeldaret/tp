lbl_80487228:
/* 80487228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048722C  7C 08 02 A6 */	mflr r0
/* 80487230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80487234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80487238  7C 7F 1B 78 */	mr r31, r3
/* 8048723C  38 7F 05 74 */	addi r3, r31, 0x574
/* 80487240  4B B8 61 E9 */	bl play__14mDoExt_baseAnmFv
/* 80487244  88 1F 07 4D */	lbz r0, 0x74d(r31)
/* 80487248  28 00 00 0A */	cmplwi r0, 0xa
/* 8048724C  41 81 00 6C */	bgt lbl_804872B8
/* 80487250  3C 60 80 48 */	lis r3, lit_4230@ha /* 0x80487410@ha */
/* 80487254  38 63 74 10 */	addi r3, r3, lit_4230@l /* 0x80487410@l */
/* 80487258  54 00 10 3A */	slwi r0, r0, 2
/* 8048725C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80487260  7C 09 03 A6 */	mtctr r0
/* 80487264  4E 80 04 20 */	bctr 
lbl_80487268:
/* 80487268  7F E3 FB 78 */	mr r3, r31
/* 8048726C  4B FF FC 59 */	bl actionSwWait__10daSwhit0_cFv
/* 80487270  48 00 00 48 */	b lbl_804872B8
lbl_80487274:
/* 80487274  7F E3 FB 78 */	mr r3, r31
/* 80487278  4B FF F8 45 */	bl actionOffWait__10daSwhit0_cFv
/* 8048727C  48 00 00 3C */	b lbl_804872B8
lbl_80487280:
/* 80487280  7F E3 FB 78 */	mr r3, r31
/* 80487284  4B FF F9 41 */	bl actionToOnReady__10daSwhit0_cFv
/* 80487288  48 00 00 30 */	b lbl_804872B8
lbl_8048728C:
/* 8048728C  7F E3 FB 78 */	mr r3, r31
/* 80487290  4B FF F9 99 */	bl actionToOnOrder__10daSwhit0_cFv
/* 80487294  48 00 00 24 */	b lbl_804872B8
lbl_80487298:
/* 80487298  7F E3 FB 78 */	mr r3, r31
/* 8048729C  4B FF FA 49 */	bl actionToOnDemo__10daSwhit0_cFv
/* 804872A0  48 00 00 18 */	b lbl_804872B8
lbl_804872A4:
/* 804872A4  7F E3 FB 78 */	mr r3, r31
/* 804872A8  4B FF FA E1 */	bl actionToOnDemo2__10daSwhit0_cFv
/* 804872AC  48 00 00 0C */	b lbl_804872B8
lbl_804872B0:
/* 804872B0  7F E3 FB 78 */	mr r3, r31
/* 804872B4  4B FF FD 0D */	bl actionOnWait__10daSwhit0_cFv
lbl_804872B8:
/* 804872B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804872BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804872C0  38 63 23 3C */	addi r3, r3, 0x233c
/* 804872C4  38 9F 06 14 */	addi r4, r31, 0x614
/* 804872C8  4B DD D8 E1 */	bl Set__4cCcSFP8cCcD_Obj
/* 804872CC  38 60 00 01 */	li r3, 1
/* 804872D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804872D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804872D8  7C 08 03 A6 */	mtlr r0
/* 804872DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804872E0  4E 80 00 20 */	blr 
