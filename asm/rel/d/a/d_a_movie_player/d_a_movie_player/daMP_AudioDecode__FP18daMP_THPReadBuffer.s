lbl_80876240:
/* 80876240  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80876244  7C 08 02 A6 */	mflr r0
/* 80876248  90 01 00 24 */	stw r0, 0x24(r1)
/* 8087624C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80876250  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80876254  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80876258  93 81 00 10 */	stw r28, 0x10(r1)
/* 8087625C  80 83 00 00 */	lwz r4, 0(r3)
/* 80876260  3B A4 00 08 */	addi r29, r4, 8
/* 80876264  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80876268  3B E3 9B D0 */	addi r31, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 8087626C  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80876270  54 03 10 3A */	slwi r3, r0, 2
/* 80876274  3B 83 00 08 */	addi r28, r3, 8
/* 80876278  7F 84 E2 14 */	add r28, r4, r28
/* 8087627C  4B FF FE ED */	bl daMP_PopFreeAudioBuffer__Fv
/* 80876280  7C 7E 1B 78 */	mr r30, r3
/* 80876284  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80876288  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 8087628C  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80876290  7C 09 03 A6 */	mtctr r0
/* 80876294  28 00 00 00 */	cmplwi r0, 0
/* 80876298  40 81 00 64 */	ble lbl_808762FC
lbl_8087629C:
/* 8087629C  88 03 00 70 */	lbz r0, 0x70(r3)
/* 808762A0  2C 00 00 01 */	cmpwi r0, 1
/* 808762A4  41 82 00 08 */	beq lbl_808762AC
/* 808762A8  48 00 00 40 */	b lbl_808762E8
lbl_808762AC:
/* 808762AC  80 7E 00 00 */	lwz r3, 0(r30)
/* 808762B0  80 BD 00 00 */	lwz r5, 0(r29)
/* 808762B4  3C 80 80 88 */	lis r4, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 808762B8  38 84 9B D0 */	addi r4, r4, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 808762BC  80 04 00 EC */	lwz r0, 0xec(r4)
/* 808762C0  7C 05 01 D6 */	mullw r0, r5, r0
/* 808762C4  7C 9C 02 14 */	add r4, r28, r0
/* 808762C8  38 A0 00 00 */	li r5, 0
/* 808762CC  4B FF C4 8D */	bl THPAudioDecode
/* 808762D0  90 7E 00 08 */	stw r3, 8(r30)
/* 808762D4  80 1E 00 00 */	lwz r0, 0(r30)
/* 808762D8  90 1E 00 04 */	stw r0, 4(r30)
/* 808762DC  7F C3 F3 78 */	mr r3, r30
/* 808762E0  4B FF FF 31 */	bl daMP_PushDecodedAudioBuffer__FPv
/* 808762E4  48 00 00 18 */	b lbl_808762FC
lbl_808762E8:
/* 808762E8  80 1D 00 00 */	lwz r0, 0(r29)
/* 808762EC  7F 9C 02 14 */	add r28, r28, r0
/* 808762F0  3B BD 00 04 */	addi r29, r29, 4
/* 808762F4  38 63 00 01 */	addi r3, r3, 1
/* 808762F8  42 00 FF A4 */	bdnz lbl_8087629C
lbl_808762FC:
/* 808762FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80876300  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80876304  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80876308  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8087630C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80876310  7C 08 03 A6 */	mtlr r0
/* 80876314  38 21 00 20 */	addi r1, r1, 0x20
/* 80876318  4E 80 00 20 */	blr 
