lbl_8035026C:
/* 8035026C  7C 08 02 A6 */	mflr r0
/* 80350270  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC005000@ha */
/* 80350274  90 01 00 04 */	stw r0, 4(r1)
/* 80350278  38 63 50 00 */	addi r3, r3, 0x5000 /* 0xCC005000@l */
/* 8035027C  38 00 FF 5F */	li r0, -161
/* 80350280  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 80350284  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 80350288  3B E4 00 00 */	addi r31, r4, 0
/* 8035028C  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 80350290  7C A0 00 38 */	and r0, r5, r0
/* 80350294  60 00 00 08 */	ori r0, r0, 8
/* 80350298  B0 03 00 0A */	sth r0, 0xa(r3)
/* 8035029C  38 61 00 10 */	addi r3, r1, 0x10
/* 803502A0  4B FE BD 61 */	bl OSClearContext
/* 803502A4  38 61 00 10 */	addi r3, r1, 0x10
/* 803502A8  4B FE BB 91 */	bl OSSetCurrentContext
/* 803502AC  80 6D 92 FC */	lwz r3, __AID_Callback(r13)
/* 803502B0  28 03 00 00 */	cmplwi r3, 0
/* 803502B4  41 82 00 40 */	beq lbl_803502F4
/* 803502B8  80 0D 93 0C */	lwz r0, __AID_Active(r13)
/* 803502BC  2C 00 00 00 */	cmpwi r0, 0
/* 803502C0  40 82 00 34 */	bne lbl_803502F4
/* 803502C4  80 0D 93 00 */	lwz r0, __CallbackStack(r13)
/* 803502C8  38 80 00 01 */	li r4, 1
/* 803502CC  90 8D 93 0C */	stw r4, __AID_Active(r13)
/* 803502D0  28 00 00 00 */	cmplwi r0, 0
/* 803502D4  41 82 00 0C */	beq lbl_803502E0
/* 803502D8  48 00 00 41 */	bl __AICallbackStackSwitch
/* 803502DC  48 00 00 10 */	b lbl_803502EC
lbl_803502E0:
/* 803502E0  39 83 00 00 */	addi r12, r3, 0
/* 803502E4  7D 88 03 A6 */	mtlr r12
/* 803502E8  4E 80 00 21 */	blrl 
lbl_803502EC:
/* 803502EC  38 00 00 00 */	li r0, 0
/* 803502F0  90 0D 93 0C */	stw r0, __AID_Active(r13)
lbl_803502F4:
/* 803502F4  38 61 00 10 */	addi r3, r1, 0x10
/* 803502F8  4B FE BD 09 */	bl OSClearContext
/* 803502FC  7F E3 FB 78 */	mr r3, r31
/* 80350300  4B FE BB 39 */	bl OSSetCurrentContext
/* 80350304  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 80350308  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8035030C  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 80350310  7C 08 03 A6 */	mtlr r0
/* 80350314  4E 80 00 20 */	blr 
