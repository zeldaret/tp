lbl_804BB070:
/* 804BB070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BB074  7C 08 02 A6 */	mflr r0
/* 804BB078  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BB07C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BB080  7C 7F 1B 79 */	or. r31, r3, r3
/* 804BB084  41 82 00 1C */	beq lbl_804BB0A0
/* 804BB088  3C A0 80 4C */	lis r5, __vt__13dmg_rod_HIO_c@ha
/* 804BB08C  38 05 BB 7C */	addi r0, r5, __vt__13dmg_rod_HIO_c@l
/* 804BB090  90 1F 00 00 */	stw r0, 0(r31)
/* 804BB094  7C 80 07 35 */	extsh. r0, r4
/* 804BB098  40 81 00 08 */	ble lbl_804BB0A0
/* 804BB09C  4B E1 3C A0 */	b __dl__FPv
lbl_804BB0A0:
/* 804BB0A0  7F E3 FB 78 */	mr r3, r31
/* 804BB0A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BB0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BB0AC  7C 08 03 A6 */	mtlr r0
/* 804BB0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804BB0B4  4E 80 00 20 */	blr 
