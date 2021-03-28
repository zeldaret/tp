lbl_804EE214:
/* 804EE214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE218  7C 08 02 A6 */	mflr r0
/* 804EE21C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE224  7C 7F 1B 79 */	or. r31, r3, r3
/* 804EE228  41 82 00 30 */	beq lbl_804EE258
/* 804EE22C  3C 60 80 4F */	lis r3, __vt__10dCcD_GStts@ha
/* 804EE230  38 03 EE 60 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 804EE234  90 1F 00 00 */	stw r0, 0(r31)
/* 804EE238  41 82 00 10 */	beq lbl_804EE248
/* 804EE23C  3C 60 80 4F */	lis r3, __vt__10cCcD_GStts@ha
/* 804EE240  38 03 EE 54 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 804EE244  90 1F 00 00 */	stw r0, 0(r31)
lbl_804EE248:
/* 804EE248  7C 80 07 35 */	extsh. r0, r4
/* 804EE24C  40 81 00 0C */	ble lbl_804EE258
/* 804EE250  7F E3 FB 78 */	mr r3, r31
/* 804EE254  4B DE 0A E8 */	b __dl__FPv
lbl_804EE258:
/* 804EE258  7F E3 FB 78 */	mr r3, r31
/* 804EE25C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE264  7C 08 03 A6 */	mtlr r0
/* 804EE268  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE26C  4E 80 00 20 */	blr 
