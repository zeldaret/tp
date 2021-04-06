lbl_804FA250:
/* 804FA250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA254  7C 08 02 A6 */	mflr r0
/* 804FA258  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA25C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FA260  7C 7F 1B 79 */	or. r31, r3, r3
/* 804FA264  41 82 00 30 */	beq lbl_804FA294
/* 804FA268  3C 60 80 50 */	lis r3, __vt__10dCcD_GStts@ha /* 0x804FADF0@ha */
/* 804FA26C  38 03 AD F0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x804FADF0@l */
/* 804FA270  90 1F 00 00 */	stw r0, 0(r31)
/* 804FA274  41 82 00 10 */	beq lbl_804FA284
/* 804FA278  3C 60 80 50 */	lis r3, __vt__10cCcD_GStts@ha /* 0x804FADE4@ha */
/* 804FA27C  38 03 AD E4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x804FADE4@l */
/* 804FA280  90 1F 00 00 */	stw r0, 0(r31)
lbl_804FA284:
/* 804FA284  7C 80 07 35 */	extsh. r0, r4
/* 804FA288  40 81 00 0C */	ble lbl_804FA294
/* 804FA28C  7F E3 FB 78 */	mr r3, r31
/* 804FA290  4B DD 4A AD */	bl __dl__FPv
lbl_804FA294:
/* 804FA294  7F E3 FB 78 */	mr r3, r31
/* 804FA298  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FA29C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA2A0  7C 08 03 A6 */	mtlr r0
/* 804FA2A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA2A8  4E 80 00 20 */	blr 
