lbl_8000FC4C:
/* 8000FC4C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8000FC50  7C 08 02 A6 */	mflr r0
/* 8000FC54  90 01 00 54 */	stw r0, 0x54(r1)
/* 8000FC58  DB E1 00 48 */	stfd f31, 0x48(r1)
/* 8000FC5C  39 61 00 48 */	addi r11, r1, 0x48
/* 8000FC60  48 35 25 59 */	bl _savegpr_20
/* 8000FC64  7C 74 1B 78 */	mr r20, r3
/* 8000FC68  7C 95 23 78 */	mr r21, r4
/* 8000FC6C  7C B6 2B 78 */	mr r22, r5
/* 8000FC70  7C D7 33 78 */	mr r23, r6
/* 8000FC74  7C F8 3B 78 */	mr r24, r7
/* 8000FC78  7D 19 43 78 */	mr r25, r8
/* 8000FC7C  FF E0 08 90 */	fmr f31, f1
/* 8000FC80  7D 3A 4B 78 */	mr r26, r9
/* 8000FC84  7D 5B 53 78 */	mr r27, r10
/* 8000FC88  83 81 00 58 */	lwz r28, 0x58(r1)
/* 8000FC8C  83 A1 00 5C */	lwz r29, 0x5c(r1)
/* 8000FC90  83 C1 00 60 */	lwz r30, 0x60(r1)
/* 8000FC94  83 E1 00 64 */	lwz r31, 0x64(r1)
/* 8000FC98  4B FF FC B9 */	bl __ct__13mDoExt_morf_cFv
/* 8000FC9C  3C 60 80 3A */	lis r3, __vt__14mDoExt_McaMorf@ha
/* 8000FCA0  38 03 32 FC */	addi r0, r3, __vt__14mDoExt_McaMorf@l
/* 8000FCA4  90 14 00 00 */	stw r0, 0(r20)
/* 8000FCA8  38 00 00 00 */	li r0, 0
/* 8000FCAC  98 14 00 50 */	stb r0, 0x50(r20)
/* 8000FCB0  98 14 00 51 */	stb r0, 0x51(r20)
/* 8000FCB4  98 14 00 52 */	stb r0, 0x52(r20)
/* 8000FCB8  93 81 00 08 */	stw r28, 8(r1)
/* 8000FCBC  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8000FCC0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8000FCC4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8000FCC8  7E 83 A3 78 */	mr r3, r20
/* 8000FCCC  7E A4 AB 78 */	mr r4, r21
/* 8000FCD0  7E C5 B3 78 */	mr r5, r22
/* 8000FCD4  7E E6 BB 78 */	mr r6, r23
/* 8000FCD8  7F 07 C3 78 */	mr r7, r24
/* 8000FCDC  7F 28 CB 78 */	mr r8, r25
/* 8000FCE0  FC 20 F8 90 */	fmr f1, f31
/* 8000FCE4  7F 49 D3 78 */	mr r9, r26
/* 8000FCE8  7F 6A DB 78 */	mr r10, r27
/* 8000FCEC  48 00 00 A9 */	bl create__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 8000FCF0  7E 83 A3 78 */	mr r3, r20
/* 8000FCF4  CB E1 00 48 */	lfd f31, 0x48(r1)
/* 8000FCF8  39 61 00 48 */	addi r11, r1, 0x48
/* 8000FCFC  48 35 25 09 */	bl _restgpr_20
/* 8000FD00  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8000FD04  7C 08 03 A6 */	mtlr r0
/* 8000FD08  38 21 00 50 */	addi r1, r1, 0x50
/* 8000FD0C  4E 80 00 20 */	blr 
