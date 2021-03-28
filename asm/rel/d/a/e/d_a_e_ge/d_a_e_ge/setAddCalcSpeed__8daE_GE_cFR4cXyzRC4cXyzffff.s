lbl_806C8518:
/* 806C8518  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 806C851C  7C 08 02 A6 */	mflr r0
/* 806C8520  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 806C8524  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 806C8528  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 806C852C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 806C8530  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 806C8534  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 806C8538  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 806C853C  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 806C8540  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 806C8544  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 806C8548  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 806C854C  39 61 00 80 */	addi r11, r1, 0x80
/* 806C8550  4B C9 9C 88 */	b _savegpr_28
/* 806C8554  7C 7F 1B 78 */	mr r31, r3
/* 806C8558  7C 9C 23 78 */	mr r28, r4
/* 806C855C  7C BD 2B 78 */	mr r29, r5
/* 806C8560  FF 80 08 90 */	fmr f28, f1
/* 806C8564  FF A0 10 90 */	fmr f29, f2
/* 806C8568  FF C0 18 90 */	fmr f30, f3
/* 806C856C  FF E0 20 90 */	fmr f31, f4
/* 806C8570  3C 60 80 6D */	lis r3, lit_3904@ha
/* 806C8574  3B C3 D0 00 */	addi r30, r3, lit_3904@l
/* 806C8578  38 61 00 4C */	addi r3, r1, 0x4c
/* 806C857C  7F A4 EB 78 */	mr r4, r29
/* 806C8580  7F 85 E3 78 */	mr r5, r28
/* 806C8584  4B B9 E5 B0 */	b __mi__4cXyzCFRC3Vec
/* 806C8588  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 806C858C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806C8590  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806C8594  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806C8598  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 806C859C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 806C85A0  38 61 00 64 */	addi r3, r1, 0x64
/* 806C85A4  4B C7 EB 94 */	b PSVECSquareMag
/* 806C85A8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C85AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C85B0  40 81 00 58 */	ble lbl_806C8608
/* 806C85B4  FC 00 08 34 */	frsqrte f0, f1
/* 806C85B8  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 806C85BC  FC 44 00 32 */	fmul f2, f4, f0
/* 806C85C0  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 806C85C4  FC 00 00 32 */	fmul f0, f0, f0
/* 806C85C8  FC 01 00 32 */	fmul f0, f1, f0
/* 806C85CC  FC 03 00 28 */	fsub f0, f3, f0
/* 806C85D0  FC 02 00 32 */	fmul f0, f2, f0
/* 806C85D4  FC 44 00 32 */	fmul f2, f4, f0
/* 806C85D8  FC 00 00 32 */	fmul f0, f0, f0
/* 806C85DC  FC 01 00 32 */	fmul f0, f1, f0
/* 806C85E0  FC 03 00 28 */	fsub f0, f3, f0
/* 806C85E4  FC 02 00 32 */	fmul f0, f2, f0
/* 806C85E8  FC 44 00 32 */	fmul f2, f4, f0
/* 806C85EC  FC 00 00 32 */	fmul f0, f0, f0
/* 806C85F0  FC 01 00 32 */	fmul f0, f1, f0
/* 806C85F4  FC 03 00 28 */	fsub f0, f3, f0
/* 806C85F8  FC 02 00 32 */	fmul f0, f2, f0
/* 806C85FC  FF 61 00 32 */	fmul f27, f1, f0
/* 806C8600  FF 60 D8 18 */	frsp f27, f27
/* 806C8604  48 00 00 90 */	b lbl_806C8694
lbl_806C8608:
/* 806C8608  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 806C860C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C8610  40 80 00 10 */	bge lbl_806C8620
/* 806C8614  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C8618  C3 63 0A E0 */	lfs f27, __float_nan@l(r3)
/* 806C861C  48 00 00 78 */	b lbl_806C8694
lbl_806C8620:
/* 806C8620  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806C8624  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806C8628  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806C862C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806C8630  7C 03 00 00 */	cmpw r3, r0
/* 806C8634  41 82 00 14 */	beq lbl_806C8648
/* 806C8638  40 80 00 40 */	bge lbl_806C8678
/* 806C863C  2C 03 00 00 */	cmpwi r3, 0
/* 806C8640  41 82 00 20 */	beq lbl_806C8660
/* 806C8644  48 00 00 34 */	b lbl_806C8678
lbl_806C8648:
/* 806C8648  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C864C  41 82 00 0C */	beq lbl_806C8658
/* 806C8650  38 00 00 01 */	li r0, 1
/* 806C8654  48 00 00 28 */	b lbl_806C867C
lbl_806C8658:
/* 806C8658  38 00 00 02 */	li r0, 2
/* 806C865C  48 00 00 20 */	b lbl_806C867C
lbl_806C8660:
/* 806C8660  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C8664  41 82 00 0C */	beq lbl_806C8670
/* 806C8668  38 00 00 05 */	li r0, 5
/* 806C866C  48 00 00 10 */	b lbl_806C867C
lbl_806C8670:
/* 806C8670  38 00 00 03 */	li r0, 3
/* 806C8674  48 00 00 08 */	b lbl_806C867C
lbl_806C8678:
/* 806C8678  38 00 00 04 */	li r0, 4
lbl_806C867C:
/* 806C867C  2C 00 00 01 */	cmpwi r0, 1
/* 806C8680  40 82 00 10 */	bne lbl_806C8690
/* 806C8684  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C8688  C3 63 0A E0 */	lfs f27, __float_nan@l(r3)
/* 806C868C  48 00 00 08 */	b lbl_806C8694
lbl_806C8690:
/* 806C8690  FF 60 08 90 */	fmr f27, f1
lbl_806C8694:
/* 806C8694  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C8698  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806C869C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 806C86A0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806C86A4  7F 83 E3 78 */	mr r3, r28
/* 806C86A8  7F A4 EB 78 */	mr r4, r29
/* 806C86AC  4B B9 E9 C0 */	b __ne__4cXyzCFRC3Vec
/* 806C86B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C86B4  41 82 00 BC */	beq lbl_806C8770
/* 806C86B8  FC 1B F0 40 */	fcmpo cr0, f27, f30
/* 806C86BC  4C 41 13 82 */	cror 2, 1, 2
/* 806C86C0  40 82 00 B0 */	bne lbl_806C8770
/* 806C86C4  EF 7B 07 32 */	fmuls f27, f27, f28
/* 806C86C8  38 61 00 64 */	addi r3, r1, 0x64
/* 806C86CC  7C 64 1B 78 */	mr r4, r3
/* 806C86D0  FC 20 E0 90 */	fmr f1, f28
/* 806C86D4  4B C7 EA 04 */	b PSVECScale
/* 806C86D8  FC 00 DA 10 */	fabs f0, f27
/* 806C86DC  FC 20 00 18 */	frsp f1, f0
/* 806C86E0  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 806C86E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C86E8  41 80 00 88 */	blt lbl_806C8770
/* 806C86EC  FC 1B E8 40 */	fcmpo cr0, f27, f29
/* 806C86F0  40 81 00 40 */	ble lbl_806C8730
/* 806C86F4  38 61 00 40 */	addi r3, r1, 0x40
/* 806C86F8  38 81 00 64 */	addi r4, r1, 0x64
/* 806C86FC  FC 20 E8 90 */	fmr f1, f29
/* 806C8700  4B B9 E4 84 */	b __ml__4cXyzCFf
/* 806C8704  38 61 00 34 */	addi r3, r1, 0x34
/* 806C8708  38 81 00 40 */	addi r4, r1, 0x40
/* 806C870C  FC 20 D8 90 */	fmr f1, f27
/* 806C8710  4B B9 E5 08 */	b __dv__4cXyzCFf
/* 806C8714  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806C8718  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806C871C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806C8720  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 806C8724  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 806C8728  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806C872C  48 00 00 44 */	b lbl_806C8770
lbl_806C8730:
/* 806C8730  FC 1B F0 40 */	fcmpo cr0, f27, f30
/* 806C8734  40 80 00 3C */	bge lbl_806C8770
/* 806C8738  38 61 00 28 */	addi r3, r1, 0x28
/* 806C873C  38 81 00 64 */	addi r4, r1, 0x64
/* 806C8740  FC 20 F0 90 */	fmr f1, f30
/* 806C8744  4B B9 E4 40 */	b __ml__4cXyzCFf
/* 806C8748  38 61 00 1C */	addi r3, r1, 0x1c
/* 806C874C  38 81 00 28 */	addi r4, r1, 0x28
/* 806C8750  FC 20 D8 90 */	fmr f1, f27
/* 806C8754  4B B9 E4 C4 */	b __dv__4cXyzCFf
/* 806C8758  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806C875C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806C8760  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806C8764  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 806C8768  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806C876C  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_806C8770:
/* 806C8770  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 806C8774  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806C8778  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C877C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806C8780  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 806C8784  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806C8788  38 61 00 10 */	addi r3, r1, 0x10
/* 806C878C  4B C7 E9 AC */	b PSVECSquareMag
/* 806C8790  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C8794  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C8798  40 81 00 58 */	ble lbl_806C87F0
/* 806C879C  FC 00 08 34 */	frsqrte f0, f1
/* 806C87A0  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 806C87A4  FC 44 00 32 */	fmul f2, f4, f0
/* 806C87A8  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 806C87AC  FC 00 00 32 */	fmul f0, f0, f0
/* 806C87B0  FC 01 00 32 */	fmul f0, f1, f0
/* 806C87B4  FC 03 00 28 */	fsub f0, f3, f0
/* 806C87B8  FC 02 00 32 */	fmul f0, f2, f0
/* 806C87BC  FC 44 00 32 */	fmul f2, f4, f0
/* 806C87C0  FC 00 00 32 */	fmul f0, f0, f0
/* 806C87C4  FC 01 00 32 */	fmul f0, f1, f0
/* 806C87C8  FC 03 00 28 */	fsub f0, f3, f0
/* 806C87CC  FC 02 00 32 */	fmul f0, f2, f0
/* 806C87D0  FC 44 00 32 */	fmul f2, f4, f0
/* 806C87D4  FC 00 00 32 */	fmul f0, f0, f0
/* 806C87D8  FC 01 00 32 */	fmul f0, f1, f0
/* 806C87DC  FC 03 00 28 */	fsub f0, f3, f0
/* 806C87E0  FC 02 00 32 */	fmul f0, f2, f0
/* 806C87E4  FC 21 00 32 */	fmul f1, f1, f0
/* 806C87E8  FC 20 08 18 */	frsp f1, f1
/* 806C87EC  48 00 00 88 */	b lbl_806C8874
lbl_806C87F0:
/* 806C87F0  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 806C87F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C87F8  40 80 00 10 */	bge lbl_806C8808
/* 806C87FC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C8800  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806C8804  48 00 00 70 */	b lbl_806C8874
lbl_806C8808:
/* 806C8808  D0 21 00 08 */	stfs f1, 8(r1)
/* 806C880C  80 81 00 08 */	lwz r4, 8(r1)
/* 806C8810  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806C8814  3C 00 7F 80 */	lis r0, 0x7f80
/* 806C8818  7C 03 00 00 */	cmpw r3, r0
/* 806C881C  41 82 00 14 */	beq lbl_806C8830
/* 806C8820  40 80 00 40 */	bge lbl_806C8860
/* 806C8824  2C 03 00 00 */	cmpwi r3, 0
/* 806C8828  41 82 00 20 */	beq lbl_806C8848
/* 806C882C  48 00 00 34 */	b lbl_806C8860
lbl_806C8830:
/* 806C8830  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C8834  41 82 00 0C */	beq lbl_806C8840
/* 806C8838  38 00 00 01 */	li r0, 1
/* 806C883C  48 00 00 28 */	b lbl_806C8864
lbl_806C8840:
/* 806C8840  38 00 00 02 */	li r0, 2
/* 806C8844  48 00 00 20 */	b lbl_806C8864
lbl_806C8848:
/* 806C8848  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C884C  41 82 00 0C */	beq lbl_806C8858
/* 806C8850  38 00 00 05 */	li r0, 5
/* 806C8854  48 00 00 10 */	b lbl_806C8864
lbl_806C8858:
/* 806C8858  38 00 00 03 */	li r0, 3
/* 806C885C  48 00 00 08 */	b lbl_806C8864
lbl_806C8860:
/* 806C8860  38 00 00 04 */	li r0, 4
lbl_806C8864:
/* 806C8864  2C 00 00 01 */	cmpwi r0, 1
/* 806C8868  40 82 00 0C */	bne lbl_806C8874
/* 806C886C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C8870  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806C8874:
/* 806C8874  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 806C8878  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 806C887C  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 806C8880  FC 40 F8 90 */	fmr f2, f31
/* 806C8884  4B BA 7E BC */	b cLib_chaseF__FPfff
/* 806C8888  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 806C888C  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 806C8890  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 806C8894  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 806C8898  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 806C889C  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 806C88A0  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 806C88A4  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 806C88A8  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 806C88AC  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 806C88B0  39 61 00 80 */	addi r11, r1, 0x80
/* 806C88B4  4B C9 99 70 */	b _restgpr_28
/* 806C88B8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 806C88BC  7C 08 03 A6 */	mtlr r0
/* 806C88C0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 806C88C4  4E 80 00 20 */	blr 
