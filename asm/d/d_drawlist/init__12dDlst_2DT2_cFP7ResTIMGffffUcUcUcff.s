lbl_80052B4C:
/* 80052B4C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80052B50  7C 08 02 A6 */	mflr r0
/* 80052B54  90 01 00 54 */	stw r0, 0x54(r1)
/* 80052B58  39 61 00 50 */	addi r11, r1, 0x50
/* 80052B5C  48 30 F5 DD */	bl _savefpr_26
/* 80052B60  39 61 00 20 */	addi r11, r1, 0x20
/* 80052B64  48 30 F6 75 */	bl _savegpr_28
/* 80052B68  7C 7C 1B 78 */	mr r28, r3
/* 80052B6C  FF 40 08 90 */	fmr f26, f1
/* 80052B70  FF 60 10 90 */	fmr f27, f2
/* 80052B74  FF 80 18 90 */	fmr f28, f3
/* 80052B78  FF A0 20 90 */	fmr f29, f4
/* 80052B7C  7C BD 2B 78 */	mr r29, r5
/* 80052B80  7C DE 33 78 */	mr r30, r6
/* 80052B84  7C FF 3B 78 */	mr r31, r7
/* 80052B88  FF C0 28 90 */	fmr f30, f5
/* 80052B8C  FF E0 30 90 */	fmr f31, f6
/* 80052B90  7C 83 23 78 */	mr r3, r4
/* 80052B94  38 9C 00 04 */	addi r4, r28, 4
/* 80052B98  38 A0 00 00 */	li r5, 0
/* 80052B9C  38 C0 00 00 */	li r6, 0
/* 80052BA0  4B FC 25 9D */	bl mDoLib_setResTimgObj__FPC7ResTIMGP9_GXTexObjUlP10_GXTlutObj
/* 80052BA4  D3 5C 00 24 */	stfs f26, 0x24(r28)
/* 80052BA8  D3 7C 00 28 */	stfs f27, 0x28(r28)
/* 80052BAC  D3 9C 00 2C */	stfs f28, 0x2c(r28)
/* 80052BB0  D3 BC 00 30 */	stfs f29, 0x30(r28)
/* 80052BB4  D3 DC 00 34 */	stfs f30, 0x34(r28)
/* 80052BB8  D3 FC 00 38 */	stfs f31, 0x38(r28)
/* 80052BBC  80 02 86 2C */	lwz r0, lit_4284(r2)
/* 80052BC0  90 01 00 08 */	stw r0, 8(r1)
/* 80052BC4  88 01 00 08 */	lbz r0, 8(r1)
/* 80052BC8  98 1C 00 3C */	stb r0, 0x3c(r28)
/* 80052BCC  88 01 00 09 */	lbz r0, 9(r1)
/* 80052BD0  98 1C 00 3D */	stb r0, 0x3d(r28)
/* 80052BD4  88 01 00 0A */	lbz r0, 0xa(r1)
/* 80052BD8  98 1C 00 3E */	stb r0, 0x3e(r28)
/* 80052BDC  88 01 00 0B */	lbz r0, 0xb(r1)
/* 80052BE0  98 1C 00 3F */	stb r0, 0x3f(r28)
/* 80052BE4  9B DC 00 44 */	stb r30, 0x44(r28)
/* 80052BE8  88 1C 00 44 */	lbz r0, 0x44(r28)
/* 80052BEC  28 00 00 00 */	cmplwi r0, 0
/* 80052BF0  41 82 00 1C */	beq lbl_80052C0C
/* 80052BF4  38 7C 00 04 */	addi r3, r28, 4
/* 80052BF8  48 30 B6 69 */	bl GXGetTexObjWrapS
/* 80052BFC  2C 03 00 02 */	cmpwi r3, 2
/* 80052C00  40 82 00 0C */	bne lbl_80052C0C
/* 80052C04  38 00 00 00 */	li r0, 0
/* 80052C08  98 1C 00 44 */	stb r0, 0x44(r28)
lbl_80052C0C:
/* 80052C0C  9B FC 00 45 */	stb r31, 0x45(r28)
/* 80052C10  88 1C 00 45 */	lbz r0, 0x45(r28)
/* 80052C14  28 00 00 00 */	cmplwi r0, 0
/* 80052C18  41 82 00 1C */	beq lbl_80052C34
/* 80052C1C  38 7C 00 04 */	addi r3, r28, 4
/* 80052C20  48 30 B6 4D */	bl GXGetTexObjWrapT
/* 80052C24  2C 03 00 02 */	cmpwi r3, 2
/* 80052C28  40 82 00 0C */	bne lbl_80052C34
/* 80052C2C  38 00 00 00 */	li r0, 0
/* 80052C30  98 1C 00 45 */	stb r0, 0x45(r28)
lbl_80052C34:
/* 80052C34  9B BC 00 46 */	stb r29, 0x46(r28)
/* 80052C38  39 61 00 50 */	addi r11, r1, 0x50
/* 80052C3C  48 30 F5 49 */	bl _restfpr_26
/* 80052C40  39 61 00 20 */	addi r11, r1, 0x20
/* 80052C44  48 30 F5 E1 */	bl _restgpr_28
/* 80052C48  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80052C4C  7C 08 03 A6 */	mtlr r0
/* 80052C50  38 21 00 50 */	addi r1, r1, 0x50
/* 80052C54  4E 80 00 20 */	blr 
