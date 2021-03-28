lbl_80CCACD0:
/* 80CCACD0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CCACD4  7C 08 02 A6 */	mflr r0
/* 80CCACD8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CCACDC  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80CCACE0  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80CCACE4  7C 7E 1B 78 */	mr r30, r3
/* 80CCACE8  3C 60 80 CD */	lis r3, DISAP_PARTICLE_NAME@ha
/* 80CCACEC  3B E3 B0 80 */	addi r31, r3, DISAP_PARTICLE_NAME@l
/* 80CCACF0  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80CCACF4  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 80CCACF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCACFC  28 03 00 00 */	cmplwi r3, 0
/* 80CCAD00  41 82 02 08 */	beq lbl_80CCAF08
/* 80CCAD04  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80CCAD08  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80CCAD0C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80CCAD10  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80CCAD14  38 9F 00 80 */	addi r4, r31, 0x80
/* 80CCAD18  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80CCAD1C  4B 67 C0 50 */	b PSMTXMultVec
/* 80CCAD20  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80CCAD24  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80CCAD28  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80CCAD2C  EC 21 00 2A */	fadds f1, f1, f0
/* 80CCAD30  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80CCAD34  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CCAD38  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80CCAD3C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80CCAD40  38 61 00 2C */	addi r3, r1, 0x2c
/* 80CCAD44  38 81 00 5C */	addi r4, r1, 0x5c
/* 80CCAD48  38 A1 00 50 */	addi r5, r1, 0x50
/* 80CCAD4C  4B 59 BD E8 */	b __mi__4cXyzCFRC3Vec
/* 80CCAD50  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80CCAD54  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80CCAD58  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CCAD5C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CCAD60  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80CCAD64  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80CCAD68  4B 59 C9 0C */	b cM_atan2s__Fff
/* 80CCAD6C  B0 61 00 26 */	sth r3, 0x26(r1)
/* 80CCAD70  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80CCAD74  EC 20 00 32 */	fmuls f1, f0, f0
/* 80CCAD78  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80CCAD7C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80CCAD80  EC 41 00 2A */	fadds f2, f1, f0
/* 80CCAD84  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80CCAD88  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CCAD8C  40 81 00 0C */	ble lbl_80CCAD98
/* 80CCAD90  FC 00 10 34 */	frsqrte f0, f2
/* 80CCAD94  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80CCAD98:
/* 80CCAD98  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80CCAD9C  4B 59 C8 D8 */	b cM_atan2s__Fff
/* 80CCADA0  7C 03 00 D0 */	neg r0, r3
/* 80CCADA4  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80CCADA8  38 80 00 00 */	li r4, 0
/* 80CCADAC  B0 81 00 28 */	sth r4, 0x28(r1)
/* 80CCADB0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80CCADB4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80CCADB8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80CCADBC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80CCADC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCADC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCADC8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80CCADCC  90 81 00 08 */	stw r4, 8(r1)
/* 80CCADD0  38 00 FF FF */	li r0, -1
/* 80CCADD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CCADD8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CCADDC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CCADE0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CCADE4  38 80 00 00 */	li r4, 0
/* 80CCADE8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B53@ha */
/* 80CCADEC  38 A5 8B 53 */	addi r5, r5, 0x8B53 /* 0x00008B53@l */
/* 80CCADF0  38 C1 00 50 */	addi r6, r1, 0x50
/* 80CCADF4  38 E0 00 00 */	li r7, 0
/* 80CCADF8  39 01 00 24 */	addi r8, r1, 0x24
/* 80CCADFC  39 21 00 38 */	addi r9, r1, 0x38
/* 80CCAE00  39 40 00 FF */	li r10, 0xff
/* 80CCAE04  4B 38 1C 8C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CCAE08  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CCAE0C  41 82 00 FC */	beq lbl_80CCAF08
/* 80CCAE10  38 61 00 44 */	addi r3, r1, 0x44
/* 80CCAE14  4B 67 C3 24 */	b PSVECSquareMag
/* 80CCAE18  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80CCAE1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CCAE20  40 81 00 58 */	ble lbl_80CCAE78
/* 80CCAE24  FC 00 08 34 */	frsqrte f0, f1
/* 80CCAE28  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80CCAE2C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CCAE30  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80CCAE34  FC 00 00 32 */	fmul f0, f0, f0
/* 80CCAE38  FC 01 00 32 */	fmul f0, f1, f0
/* 80CCAE3C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CCAE40  FC 02 00 32 */	fmul f0, f2, f0
/* 80CCAE44  FC 44 00 32 */	fmul f2, f4, f0
/* 80CCAE48  FC 00 00 32 */	fmul f0, f0, f0
/* 80CCAE4C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CCAE50  FC 03 00 28 */	fsub f0, f3, f0
/* 80CCAE54  FC 02 00 32 */	fmul f0, f2, f0
/* 80CCAE58  FC 44 00 32 */	fmul f2, f4, f0
/* 80CCAE5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CCAE60  FC 01 00 32 */	fmul f0, f1, f0
/* 80CCAE64  FC 03 00 28 */	fsub f0, f3, f0
/* 80CCAE68  FC 02 00 32 */	fmul f0, f2, f0
/* 80CCAE6C  FC 21 00 32 */	fmul f1, f1, f0
/* 80CCAE70  FC 20 08 18 */	frsp f1, f1
/* 80CCAE74  48 00 00 88 */	b lbl_80CCAEFC
lbl_80CCAE78:
/* 80CCAE78  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80CCAE7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CCAE80  40 80 00 10 */	bge lbl_80CCAE90
/* 80CCAE84  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CCAE88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CCAE8C  48 00 00 70 */	b lbl_80CCAEFC
lbl_80CCAE90:
/* 80CCAE90  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CCAE94  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80CCAE98  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CCAE9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CCAEA0  7C 03 00 00 */	cmpw r3, r0
/* 80CCAEA4  41 82 00 14 */	beq lbl_80CCAEB8
/* 80CCAEA8  40 80 00 40 */	bge lbl_80CCAEE8
/* 80CCAEAC  2C 03 00 00 */	cmpwi r3, 0
/* 80CCAEB0  41 82 00 20 */	beq lbl_80CCAED0
/* 80CCAEB4  48 00 00 34 */	b lbl_80CCAEE8
lbl_80CCAEB8:
/* 80CCAEB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CCAEBC  41 82 00 0C */	beq lbl_80CCAEC8
/* 80CCAEC0  38 00 00 01 */	li r0, 1
/* 80CCAEC4  48 00 00 28 */	b lbl_80CCAEEC
lbl_80CCAEC8:
/* 80CCAEC8  38 00 00 02 */	li r0, 2
/* 80CCAECC  48 00 00 20 */	b lbl_80CCAEEC
lbl_80CCAED0:
/* 80CCAED0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CCAED4  41 82 00 0C */	beq lbl_80CCAEE0
/* 80CCAED8  38 00 00 05 */	li r0, 5
/* 80CCAEDC  48 00 00 10 */	b lbl_80CCAEEC
lbl_80CCAEE0:
/* 80CCAEE0  38 00 00 03 */	li r0, 3
/* 80CCAEE4  48 00 00 08 */	b lbl_80CCAEEC
lbl_80CCAEE8:
/* 80CCAEE8  38 00 00 04 */	li r0, 4
lbl_80CCAEEC:
/* 80CCAEEC  2C 00 00 01 */	cmpwi r0, 1
/* 80CCAEF0  40 82 00 0C */	bne lbl_80CCAEFC
/* 80CCAEF4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CCAEF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CCAEFC:
/* 80CCAEFC  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80CCAF00  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CCAF04  D0 1E 00 B4 */	stfs f0, 0xb4(r30)
lbl_80CCAF08:
/* 80CCAF08  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80CCAF0C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80CCAF10  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CCAF14  7C 08 03 A6 */	mtlr r0
/* 80CCAF18  38 21 00 70 */	addi r1, r1, 0x70
/* 80CCAF1C  4E 80 00 20 */	blr 
