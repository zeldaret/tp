lbl_804A3240:
/* 804A3240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A3244  7C 08 02 A6 */	mflr r0
/* 804A3248  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A324C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A3250  7C 7F 1B 79 */	or. r31, r3, r3
/* 804A3254  41 82 00 30 */	beq lbl_804A3284
/* 804A3258  3C 60 80 4A */	lis r3, __vt__10dCcD_GStts@ha
/* 804A325C  38 03 41 F0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 804A3260  90 1F 00 00 */	stw r0, 0(r31)
/* 804A3264  41 82 00 10 */	beq lbl_804A3274
/* 804A3268  3C 60 80 4A */	lis r3, __vt__10cCcD_GStts@ha
/* 804A326C  38 03 41 E4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 804A3270  90 1F 00 00 */	stw r0, 0(r31)
lbl_804A3274:
/* 804A3274  7C 80 07 35 */	extsh. r0, r4
/* 804A3278  40 81 00 0C */	ble lbl_804A3284
/* 804A327C  7F E3 FB 78 */	mr r3, r31
/* 804A3280  4B E2 BA BC */	b __dl__FPv
lbl_804A3284:
/* 804A3284  7F E3 FB 78 */	mr r3, r31
/* 804A3288  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A328C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A3290  7C 08 03 A6 */	mtlr r0
/* 804A3294  38 21 00 10 */	addi r1, r1, 0x10
/* 804A3298  4E 80 00 20 */	blr 
