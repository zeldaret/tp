lbl_80876E0C:
/* 80876E0C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80876E10  7C 08 02 A6 */	mflr r0
/* 80876E14  90 01 00 84 */	stw r0, 0x84(r1)
/* 80876E18  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80876E1C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80876E20  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80876E24  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80876E28  39 61 00 60 */	addi r11, r1, 0x60
/* 80876E2C  4B AE B3 95 */	bl _savegpr_22
/* 80876E30  3C 80 80 88 */	lis r4, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80876E34  3B C4 9B D0 */	addi r30, r4, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80876E38  80 1E 00 A0 */	lwz r0, 0xa0(r30)
/* 80876E3C  2C 00 00 00 */	cmpwi r0, 0
/* 80876E40  41 82 02 00 */	beq lbl_80877040
/* 80876E44  88 1E 00 A5 */	lbz r0, 0xa5(r30)
/* 80876E48  28 00 00 02 */	cmplwi r0, 2
/* 80876E4C  40 82 01 F4 */	bne lbl_80877040
/* 80876E50  88 1E 00 A7 */	lbz r0, 0xa7(r30)
/* 80876E54  28 00 00 00 */	cmplwi r0, 0
/* 80876E58  41 82 01 E8 */	beq lbl_80877040
/* 80876E5C  7C BC 2B 78 */	mr r28, r5
/* 80876E60  7C 7A 1B 78 */	mr r26, r3
lbl_80876E64:
/* 80876E64  80 1E 00 FC */	lwz r0, 0xfc(r30)
/* 80876E68  28 00 00 00 */	cmplwi r0, 0
/* 80876E6C  40 82 00 38 */	bne lbl_80876EA4
/* 80876E70  38 60 00 00 */	li r3, 0
/* 80876E74  4B FF F3 59 */	bl daMP_PopDecodedAudioBuffer__Fl
/* 80876E78  90 7E 00 FC */	stw r3, 0xfc(r30)
/* 80876E7C  28 03 00 00 */	cmplwi r3, 0
/* 80876E80  40 82 00 18 */	bne lbl_80876E98
/* 80876E84  7F 43 D3 78 */	mr r3, r26
/* 80876E88  38 80 00 00 */	li r4, 0
/* 80876E8C  57 85 10 3A */	slwi r5, r28, 2
/* 80876E90  4B 78 C5 C9 */	bl memset
/* 80876E94  48 00 01 B8 */	b lbl_8087704C
lbl_80876E98:
/* 80876E98  80 7E 00 F4 */	lwz r3, 0xf4(r30)
/* 80876E9C  38 03 00 01 */	addi r0, r3, 1
/* 80876EA0  90 1E 00 F4 */	stw r0, 0xf4(r30)
lbl_80876EA4:
/* 80876EA4  80 7E 00 FC */	lwz r3, 0xfc(r30)
/* 80876EA8  83 A3 00 08 */	lwz r29, 8(r3)
/* 80876EAC  28 1D 00 00 */	cmplwi r29, 0
/* 80876EB0  41 82 FF B4 */	beq lbl_80876E64
/* 80876EB4  7C 1D E0 40 */	cmplw r29, r28
/* 80876EB8  41 80 00 08 */	blt lbl_80876EC0
/* 80876EBC  7F 9D E3 78 */	mr r29, r28
lbl_80876EC0:
/* 80876EC0  83 23 00 04 */	lwz r25, 4(r3)
/* 80876EC4  3B 60 00 00 */	li r27, 0
/* 80876EC8  3C 60 80 88 */	lis r3, daMP_VolumeTable@ha /* 0x80879434@ha */
/* 80876ECC  3B E3 94 34 */	addi r31, r3, daMP_VolumeTable@l /* 0x80879434@l */
/* 80876ED0  3C 60 80 88 */	lis r3, lit_4894@ha /* 0x80879114@ha */
/* 80876ED4  C3 C3 91 14 */	lfs f30, lit_4894@l(r3)  /* 0x80879114@l */
/* 80876ED8  3C 60 80 88 */	lis r3, lit_4814@ha /* 0x8087910C@ha */
/* 80876EDC  CB E3 91 0C */	lfd f31, lit_4814@l(r3)  /* 0x8087910C@l */
/* 80876EE0  3F 00 43 30 */	lis r24, 0x4330
/* 80876EE4  48 00 01 10 */	b lbl_80876FF4
lbl_80876EE8:
/* 80876EE8  80 7E 00 E8 */	lwz r3, 0xe8(r30)
/* 80876EEC  2C 03 00 00 */	cmpwi r3, 0
/* 80876EF0  41 82 00 20 */	beq lbl_80876F10
/* 80876EF4  38 03 FF FF */	addi r0, r3, -1
/* 80876EF8  90 1E 00 E8 */	stw r0, 0xe8(r30)
/* 80876EFC  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 80876F00  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80876F04  EC 01 00 2A */	fadds f0, f1, f0
/* 80876F08  D0 1E 00 DC */	stfs f0, 0xdc(r30)
/* 80876F0C  48 00 00 0C */	b lbl_80876F18
lbl_80876F10:
/* 80876F10  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80876F14  D0 1E 00 DC */	stfs f0, 0xdc(r30)
lbl_80876F18:
/* 80876F18  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 80876F1C  FC 00 00 1E */	fctiwz f0, f0
/* 80876F20  D8 01 00 08 */	stfd f0, 8(r1)
/* 80876F24  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80876F28  54 00 08 3C */	slwi r0, r0, 1
/* 80876F2C  7C 7F 02 2E */	lhzx r3, r31, r0
/* 80876F30  A8 19 00 00 */	lha r0, 0(r25)
/* 80876F34  7C 03 01 D6 */	mullw r0, r3, r0
/* 80876F38  7C 00 7E 70 */	srawi r0, r0, 0xf
/* 80876F3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80876F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80876F44  93 01 00 10 */	stw r24, 0x10(r1)
/* 80876F48  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80876F4C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80876F50  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80876F54  FC 00 00 1E */	fctiwz f0, f0
/* 80876F58  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80876F5C  82 E1 00 1C */	lwz r23, 0x1c(r1)
/* 80876F60  2C 17 80 00 */	cmpwi r23, -32768
/* 80876F64  40 80 00 08 */	bge lbl_80876F6C
/* 80876F68  3A E0 80 00 */	li r23, -32768
lbl_80876F6C:
/* 80876F6C  2C 17 7F FF */	cmpwi r23, 0x7fff
/* 80876F70  40 81 00 08 */	ble lbl_80876F78
/* 80876F74  3A E0 7F FF */	li r23, 0x7fff
lbl_80876F78:
/* 80876F78  A8 19 00 02 */	lha r0, 2(r25)
/* 80876F7C  7C 03 01 D6 */	mullw r0, r3, r0
/* 80876F80  7C 00 7E 70 */	srawi r0, r0, 0xf
/* 80876F84  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80876F88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80876F8C  93 01 00 20 */	stw r24, 0x20(r1)
/* 80876F90  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80876F94  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80876F98  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80876F9C  FC 00 00 1E */	fctiwz f0, f0
/* 80876FA0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80876FA4  82 C1 00 2C */	lwz r22, 0x2c(r1)
/* 80876FA8  2C 16 80 00 */	cmpwi r22, -32768
/* 80876FAC  40 80 00 08 */	bge lbl_80876FB4
/* 80876FB0  3A C0 80 00 */	li r22, -32768
lbl_80876FB4:
/* 80876FB4  2C 16 7F FF */	cmpwi r22, 0x7fff
/* 80876FB8  40 81 00 08 */	ble lbl_80876FC0
/* 80876FBC  3A C0 7F FF */	li r22, 0x7fff
lbl_80876FC0:
/* 80876FC0  4B A2 71 C1 */	bl getOutputMode__9JASDriverFv
/* 80876FC4  28 03 00 00 */	cmplwi r3, 0
/* 80876FC8  40 82 00 18 */	bne lbl_80876FE0
/* 80876FCC  7E C3 0E 70 */	srawi r3, r22, 1
/* 80876FD0  7E E0 0E 70 */	srawi r0, r23, 1
/* 80876FD4  7C 03 02 14 */	add r0, r3, r0
/* 80876FD8  7C 16 07 34 */	extsh r22, r0
/* 80876FDC  7E D7 B3 78 */	mr r23, r22
lbl_80876FE0:
/* 80876FE0  B2 FA 00 00 */	sth r23, 0(r26)
/* 80876FE4  B2 DA 00 02 */	sth r22, 2(r26)
/* 80876FE8  3B 5A 00 04 */	addi r26, r26, 4
/* 80876FEC  3B 39 00 04 */	addi r25, r25, 4
/* 80876FF0  3B 7B 00 01 */	addi r27, r27, 1
lbl_80876FF4:
/* 80876FF4  7C 1B E8 40 */	cmplw r27, r29
/* 80876FF8  41 80 FE F0 */	blt lbl_80876EE8
/* 80876FFC  7F 9D E0 50 */	subf r28, r29, r28
/* 80877000  80 7E 00 FC */	lwz r3, 0xfc(r30)
/* 80877004  80 03 00 08 */	lwz r0, 8(r3)
/* 80877008  7C 1D 00 50 */	subf r0, r29, r0
/* 8087700C  90 03 00 08 */	stw r0, 8(r3)
/* 80877010  80 7E 00 FC */	lwz r3, 0xfc(r30)
/* 80877014  93 23 00 04 */	stw r25, 4(r3)
/* 80877018  80 7E 00 FC */	lwz r3, 0xfc(r30)
/* 8087701C  80 03 00 08 */	lwz r0, 8(r3)
/* 80877020  28 00 00 00 */	cmplwi r0, 0
/* 80877024  40 82 00 10 */	bne lbl_80877034
/* 80877028  4B FF F1 75 */	bl daMP_PushFreeAudioBuffer__FPv
/* 8087702C  38 00 00 00 */	li r0, 0
/* 80877030  90 1E 00 FC */	stw r0, 0xfc(r30)
lbl_80877034:
/* 80877034  28 1C 00 00 */	cmplwi r28, 0
/* 80877038  41 82 00 14 */	beq lbl_8087704C
/* 8087703C  4B FF FE 28 */	b lbl_80876E64
lbl_80877040:
/* 80877040  38 80 00 00 */	li r4, 0
/* 80877044  54 A5 10 3A */	slwi r5, r5, 2
/* 80877048  4B 78 C4 11 */	bl memset
lbl_8087704C:
/* 8087704C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80877050  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80877054  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80877058  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8087705C  39 61 00 60 */	addi r11, r1, 0x60
/* 80877060  4B AE B1 AD */	bl _restgpr_22
/* 80877064  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80877068  7C 08 03 A6 */	mtlr r0
/* 8087706C  38 21 00 80 */	addi r1, r1, 0x80
/* 80877070  4E 80 00 20 */	blr 
