lbl_8027DCA0:
/* 8027DCA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027DCA4  7C 08 02 A6 */	mflr r0
/* 8027DCA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027DCAC  39 61 00 20 */	addi r11, r1, 0x20
/* 8027DCB0  48 0E 45 21 */	bl _savegpr_26
/* 8027DCB4  7C 7E 1B 78 */	mr r30, r3
/* 8027DCB8  7C 9A 23 78 */	mr r26, r4
/* 8027DCBC  7C BD 2B 78 */	mr r29, r5
/* 8027DCC0  7C DF 33 78 */	mr r31, r6
/* 8027DCC4  7C FC 3B 78 */	mr r28, r7
/* 8027DCC8  7D 1B 43 78 */	mr r27, r8
/* 8027DCCC  38 7E 00 04 */	addi r3, r30, 4
/* 8027DCD0  48 05 E2 45 */	bl initiate__10JSUPtrListFv
/* 8027DCD4  38 00 00 00 */	li r0, 0
/* 8027DCD8  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8027DCDC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8027DCE0  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8027DCE4  93 BE 00 24 */	stw r29, 0x24(r30)
/* 8027DCE8  93 5E 00 28 */	stw r26, 0x28(r30)
/* 8027DCEC  9B 9E 00 2C */	stb r28, 0x2c(r30)
/* 8027DCF0  9B 7E 00 2D */	stb r27, 0x2d(r30)
/* 8027DCF4  83 9E 00 24 */	lwz r28, 0x24(r30)
/* 8027DCF8  1C 7C 01 14 */	mulli r3, r28, 0x114
/* 8027DCFC  38 63 00 10 */	addi r3, r3, 0x10
/* 8027DD00  7F E4 FB 78 */	mr r4, r31
/* 8027DD04  38 A0 00 00 */	li r5, 0
/* 8027DD08  48 05 10 09 */	bl __nwa__FUlP7JKRHeapi
/* 8027DD0C  3C 80 80 28 */	lis r4, __ct__14JPABaseEmitterFv@ha /* 0x8027E64C@ha */
/* 8027DD10  38 84 E6 4C */	addi r4, r4, __ct__14JPABaseEmitterFv@l /* 0x8027E64C@l */
/* 8027DD14  3C A0 80 28 */	lis r5, __dt__14JPABaseEmitterFv@ha /* 0x8027E5EC@ha */
/* 8027DD18  38 A5 E5 EC */	addi r5, r5, __dt__14JPABaseEmitterFv@l /* 0x8027E5EC@l */
/* 8027DD1C  38 C0 01 14 */	li r6, 0x114
/* 8027DD20  7F 87 E3 78 */	mr r7, r28
/* 8027DD24  48 0E 41 F1 */	bl __construct_new_array
/* 8027DD28  7C 7C 1B 78 */	mr r28, r3
/* 8027DD2C  3B 60 00 00 */	li r27, 0
/* 8027DD30  3B A0 00 00 */	li r29, 0
/* 8027DD34  48 00 00 1C */	b lbl_8027DD50
lbl_8027DD38:
/* 8027DD38  38 7E 00 04 */	addi r3, r30, 4
/* 8027DD3C  38 9D 00 58 */	addi r4, r29, 0x58
/* 8027DD40  7C 9C 22 14 */	add r4, r28, r4
/* 8027DD44  48 05 E2 AD */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 8027DD48  3B 7B 00 01 */	addi r27, r27, 1
/* 8027DD4C  3B BD 01 14 */	addi r29, r29, 0x114
lbl_8027DD50:
/* 8027DD50  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8027DD54  7C 1B 00 40 */	cmplw r27, r0
/* 8027DD58  41 80 FF E0 */	blt lbl_8027DD38
/* 8027DD5C  83 9E 00 28 */	lwz r28, 0x28(r30)
/* 8027DD60  1C 7C 00 A0 */	mulli r3, r28, 0xa0
/* 8027DD64  38 63 00 10 */	addi r3, r3, 0x10
/* 8027DD68  7F E4 FB 78 */	mr r4, r31
/* 8027DD6C  38 A0 00 00 */	li r5, 0
/* 8027DD70  48 05 0F A1 */	bl __nwa__FUlP7JKRHeapi
/* 8027DD74  3C 80 80 28 */	lis r4, func_8027E588@ha /* 0x8027E588@ha */
/* 8027DD78  38 84 E5 88 */	addi r4, r4, func_8027E588@l /* 0x8027E588@l */
/* 8027DD7C  3C A0 80 28 */	lis r5, func_8027E54C@ha /* 0x8027E54C@ha */
/* 8027DD80  38 A5 E5 4C */	addi r5, r5, func_8027E54C@l /* 0x8027E54C@l */
/* 8027DD84  38 C0 00 A0 */	li r6, 0xa0
/* 8027DD88  7F 87 E3 78 */	mr r7, r28
/* 8027DD8C  48 0E 41 89 */	bl __construct_new_array
/* 8027DD90  38 E0 00 00 */	li r7, 0
/* 8027DD94  38 80 00 00 */	li r4, 0
/* 8027DD98  48 00 00 5C */	b lbl_8027DDF4
lbl_8027DD9C:
/* 8027DD9C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8027DDA0  28 00 00 00 */	cmplwi r0, 0
/* 8027DDA4  41 82 00 24 */	beq lbl_8027DDC8
/* 8027DDA8  7C C3 22 14 */	add r6, r3, r4
/* 8027DDAC  90 06 00 00 */	stw r0, 0(r6)
/* 8027DDB0  38 00 00 00 */	li r0, 0
/* 8027DDB4  90 06 00 04 */	stw r0, 4(r6)
/* 8027DDB8  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 8027DDBC  90 C5 00 04 */	stw r6, 4(r5)
/* 8027DDC0  90 DE 00 14 */	stw r6, 0x14(r30)
/* 8027DDC4  48 00 00 1C */	b lbl_8027DDE0
lbl_8027DDC8:
/* 8027DDC8  7C A3 22 14 */	add r5, r3, r4
/* 8027DDCC  90 BE 00 10 */	stw r5, 0x10(r30)
/* 8027DDD0  90 BE 00 14 */	stw r5, 0x14(r30)
/* 8027DDD4  38 00 00 00 */	li r0, 0
/* 8027DDD8  90 05 00 00 */	stw r0, 0(r5)
/* 8027DDDC  90 05 00 04 */	stw r0, 4(r5)
lbl_8027DDE0:
/* 8027DDE0  80 BE 00 18 */	lwz r5, 0x18(r30)
/* 8027DDE4  38 05 00 01 */	addi r0, r5, 1
/* 8027DDE8  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8027DDEC  38 E7 00 01 */	addi r7, r7, 1
/* 8027DDF0  38 84 00 A0 */	addi r4, r4, 0xa0
lbl_8027DDF4:
/* 8027DDF4  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 8027DDF8  7C 07 00 40 */	cmplw r7, r0
/* 8027DDFC  41 80 FF A0 */	blt lbl_8027DD9C
/* 8027DE00  8B 9E 00 2C */	lbz r28, 0x2c(r30)
/* 8027DE04  1C 7C 00 0C */	mulli r3, r28, 0xc
/* 8027DE08  38 63 00 10 */	addi r3, r3, 0x10
/* 8027DE0C  7F E4 FB 78 */	mr r4, r31
/* 8027DE10  38 A0 00 00 */	li r5, 0
/* 8027DE14  48 05 0E FD */	bl __nwa__FUlP7JKRHeapi
/* 8027DE18  3C 80 80 28 */	lis r4, func_8027E51C@ha /* 0x8027E51C@ha */
/* 8027DE1C  38 84 E5 1C */	addi r4, r4, func_8027E51C@l /* 0x8027E51C@l */
/* 8027DE20  3C A0 80 28 */	lis r5, func_8027E598@ha /* 0x8027E598@ha */
/* 8027DE24  38 A5 E5 98 */	addi r5, r5, func_8027E598@l /* 0x8027E598@l */
/* 8027DE28  38 C0 00 0C */	li r6, 0xc
/* 8027DE2C  7F 87 E3 78 */	mr r7, r28
/* 8027DE30  48 0E 40 E5 */	bl __construct_new_array
/* 8027DE34  90 7E 00 00 */	stw r3, 0(r30)
/* 8027DE38  88 1E 00 2D */	lbz r0, 0x2d(r30)
/* 8027DE3C  54 03 10 3A */	slwi r3, r0, 2
/* 8027DE40  7F E4 FB 78 */	mr r4, r31
/* 8027DE44  38 A0 00 00 */	li r5, 0
/* 8027DE48  48 05 0E C9 */	bl __nwa__FUlP7JKRHeapi
/* 8027DE4C  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 8027DE50  38 C0 00 00 */	li r6, 0
/* 8027DE54  38 60 00 00 */	li r3, 0
/* 8027DE58  38 A0 00 00 */	li r5, 0
/* 8027DE5C  48 00 00 14 */	b lbl_8027DE70
lbl_8027DE60:
/* 8027DE60  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 8027DE64  7C A4 19 2E */	stwx r5, r4, r3
/* 8027DE68  38 C6 00 01 */	addi r6, r6, 1
/* 8027DE6C  38 63 00 04 */	addi r3, r3, 4
lbl_8027DE70:
/* 8027DE70  88 1E 00 2D */	lbz r0, 0x2d(r30)
/* 8027DE74  7C 06 00 00 */	cmpw r6, r0
/* 8027DE78  41 80 FF E8 */	blt lbl_8027DE60
/* 8027DE7C  38 60 02 18 */	li r3, 0x218
/* 8027DE80  7F E4 FB 78 */	mr r4, r31
/* 8027DE84  38 A0 00 00 */	li r5, 0
/* 8027DE88  48 05 0E 11 */	bl __nw__FUlP7JKRHeapi
/* 8027DE8C  28 03 00 00 */	cmplwi r3, 0
/* 8027DE90  41 82 00 0C */	beq lbl_8027DE9C
/* 8027DE94  38 00 00 00 */	li r0, 0
/* 8027DE98  90 03 00 0C */	stw r0, 0xc(r3)
lbl_8027DE9C:
/* 8027DE9C  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8027DEA0  7F C3 F3 78 */	mr r3, r30
/* 8027DEA4  39 61 00 20 */	addi r11, r1, 0x20
/* 8027DEA8  48 0E 43 75 */	bl _restgpr_26
/* 8027DEAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027DEB0  7C 08 03 A6 */	mtlr r0
/* 8027DEB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8027DEB8  4E 80 00 20 */	blr 
