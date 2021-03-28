lbl_8026DC3C:
/* 8026DC3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026DC40  7C 08 02 A6 */	mflr r0
/* 8026DC44  90 01 00 34 */	stw r0, 0x34(r1)
/* 8026DC48  39 61 00 30 */	addi r11, r1, 0x30
/* 8026DC4C  48 0F 45 91 */	bl _savegpr_29
/* 8026DC50  7C 7D 1B 78 */	mr r29, r3
/* 8026DC54  7C 9E 23 78 */	mr r30, r4
/* 8026DC58  7C BF 2B 78 */	mr r31, r5
/* 8026DC5C  48 0D 97 69 */	bl PSVECDistance
/* 8026DC60  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8026DC64  FC 40 08 18 */	frsp f2, f1
/* 8026DC68  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8026DC6C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8026DC70  EC 01 00 2A */	fadds f0, f1, f0
/* 8026DC74  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026DC78  40 80 00 20 */	bge lbl_8026DC98
/* 8026DC7C  7F A3 EB 78 */	mr r3, r29
/* 8026DC80  7F C4 F3 78 */	mr r4, r30
/* 8026DC84  7F A5 EB 78 */	mr r5, r29
/* 8026DC88  7F E6 FB 78 */	mr r6, r31
/* 8026DC8C  4B FF FE 55 */	bl cM3d_Cross_CpsSph_CrossPos__FRC8cM3dGCpsRC8cM3dGSphRC3VecP3Vec
/* 8026DC90  38 60 00 01 */	li r3, 1
/* 8026DC94  48 00 01 80 */	b lbl_8026DE14
lbl_8026DC98:
/* 8026DC98  38 7D 00 0C */	addi r3, r29, 0xc
/* 8026DC9C  7F C4 F3 78 */	mr r4, r30
/* 8026DCA0  48 0D 97 25 */	bl PSVECDistance
/* 8026DCA4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8026DCA8  FC 40 08 18 */	frsp f2, f1
/* 8026DCAC  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8026DCB0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8026DCB4  EC 01 00 2A */	fadds f0, f1, f0
/* 8026DCB8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026DCBC  40 80 00 20 */	bge lbl_8026DCDC
/* 8026DCC0  7F A3 EB 78 */	mr r3, r29
/* 8026DCC4  7F C4 F3 78 */	mr r4, r30
/* 8026DCC8  38 BD 00 0C */	addi r5, r29, 0xc
/* 8026DCCC  7F E6 FB 78 */	mr r6, r31
/* 8026DCD0  4B FF FE 11 */	bl cM3d_Cross_CpsSph_CrossPos__FRC8cM3dGCpsRC8cM3dGSphRC3VecP3Vec
/* 8026DCD4  38 60 00 01 */	li r3, 1
/* 8026DCD8  48 00 01 3C */	b lbl_8026DE14
lbl_8026DCDC:
/* 8026DCDC  7F A3 EB 78 */	mr r3, r29
/* 8026DCE0  7F C4 F3 78 */	mr r4, r30
/* 8026DCE4  38 A1 00 10 */	addi r5, r1, 0x10
/* 8026DCE8  38 C1 00 0C */	addi r6, r1, 0xc
/* 8026DCEC  4B FF AA 25 */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 8026DCF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026DCF4  41 82 01 1C */	beq lbl_8026DE10
/* 8026DCF8  C0 9D 00 1C */	lfs f4, 0x1c(r29)
/* 8026DCFC  C0 BE 00 0C */	lfs f5, 0xc(r30)
/* 8026DD00  C0 C1 00 0C */	lfs f6, 0xc(r1)
/* 8026DD04  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026DD08  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8026DD0C  40 81 00 58 */	ble lbl_8026DD64
/* 8026DD10  FC 00 30 34 */	frsqrte f0, f6
/* 8026DD14  C8 62 B7 20 */	lfd f3, lit_2257(r2)
/* 8026DD18  FC 23 00 32 */	fmul f1, f3, f0
/* 8026DD1C  C8 42 B7 28 */	lfd f2, lit_2258(r2)
/* 8026DD20  FC 00 00 32 */	fmul f0, f0, f0
/* 8026DD24  FC 06 00 32 */	fmul f0, f6, f0
/* 8026DD28  FC 02 00 28 */	fsub f0, f2, f0
/* 8026DD2C  FC 01 00 32 */	fmul f0, f1, f0
/* 8026DD30  FC 23 00 32 */	fmul f1, f3, f0
/* 8026DD34  FC 00 00 32 */	fmul f0, f0, f0
/* 8026DD38  FC 06 00 32 */	fmul f0, f6, f0
/* 8026DD3C  FC 02 00 28 */	fsub f0, f2, f0
/* 8026DD40  FC 01 00 32 */	fmul f0, f1, f0
/* 8026DD44  FC 23 00 32 */	fmul f1, f3, f0
/* 8026DD48  FC 00 00 32 */	fmul f0, f0, f0
/* 8026DD4C  FC 06 00 32 */	fmul f0, f6, f0
/* 8026DD50  FC 02 00 28 */	fsub f0, f2, f0
/* 8026DD54  FC 01 00 32 */	fmul f0, f1, f0
/* 8026DD58  FC C6 00 32 */	fmul f6, f6, f0
/* 8026DD5C  FC C0 30 18 */	frsp f6, f6
/* 8026DD60  48 00 00 88 */	b lbl_8026DDE8
lbl_8026DD64:
/* 8026DD64  C8 02 B7 30 */	lfd f0, lit_2259(r2)
/* 8026DD68  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8026DD6C  40 80 00 10 */	bge lbl_8026DD7C
/* 8026DD70  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8026DD74  C0 C3 0A E0 */	lfs f6, __float_nan@l(r3)
/* 8026DD78  48 00 00 70 */	b lbl_8026DDE8
lbl_8026DD7C:
/* 8026DD7C  D0 C1 00 08 */	stfs f6, 8(r1)
/* 8026DD80  80 81 00 08 */	lwz r4, 8(r1)
/* 8026DD84  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8026DD88  3C 00 7F 80 */	lis r0, 0x7f80
/* 8026DD8C  7C 03 00 00 */	cmpw r3, r0
/* 8026DD90  41 82 00 14 */	beq lbl_8026DDA4
/* 8026DD94  40 80 00 40 */	bge lbl_8026DDD4
/* 8026DD98  2C 03 00 00 */	cmpwi r3, 0
/* 8026DD9C  41 82 00 20 */	beq lbl_8026DDBC
/* 8026DDA0  48 00 00 34 */	b lbl_8026DDD4
lbl_8026DDA4:
/* 8026DDA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026DDA8  41 82 00 0C */	beq lbl_8026DDB4
/* 8026DDAC  38 00 00 01 */	li r0, 1
/* 8026DDB0  48 00 00 28 */	b lbl_8026DDD8
lbl_8026DDB4:
/* 8026DDB4  38 00 00 02 */	li r0, 2
/* 8026DDB8  48 00 00 20 */	b lbl_8026DDD8
lbl_8026DDBC:
/* 8026DDBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026DDC0  41 82 00 0C */	beq lbl_8026DDCC
/* 8026DDC4  38 00 00 05 */	li r0, 5
/* 8026DDC8  48 00 00 10 */	b lbl_8026DDD8
lbl_8026DDCC:
/* 8026DDCC  38 00 00 03 */	li r0, 3
/* 8026DDD0  48 00 00 08 */	b lbl_8026DDD8
lbl_8026DDD4:
/* 8026DDD4  38 00 00 04 */	li r0, 4
lbl_8026DDD8:
/* 8026DDD8  2C 00 00 01 */	cmpwi r0, 1
/* 8026DDDC  40 82 00 0C */	bne lbl_8026DDE8
/* 8026DDE0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8026DDE4  C0 C3 0A E0 */	lfs f6, __float_nan@l(r3)
lbl_8026DDE8:
/* 8026DDE8  EC 04 28 2A */	fadds f0, f4, f5
/* 8026DDEC  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8026DDF0  40 80 00 20 */	bge lbl_8026DE10
/* 8026DDF4  7F A3 EB 78 */	mr r3, r29
/* 8026DDF8  7F C4 F3 78 */	mr r4, r30
/* 8026DDFC  38 A1 00 10 */	addi r5, r1, 0x10
/* 8026DE00  7F E6 FB 78 */	mr r6, r31
/* 8026DE04  4B FF FC DD */	bl cM3d_Cross_CpsSph_CrossPos__FRC8cM3dGCpsRC8cM3dGSphRC3VecP3Vec
/* 8026DE08  38 60 00 01 */	li r3, 1
/* 8026DE0C  48 00 00 08 */	b lbl_8026DE14
lbl_8026DE10:
/* 8026DE10  38 60 00 00 */	li r3, 0
lbl_8026DE14:
/* 8026DE14  39 61 00 30 */	addi r11, r1, 0x30
/* 8026DE18  48 0F 44 11 */	bl _restgpr_29
/* 8026DE1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8026DE20  7C 08 03 A6 */	mtlr r0
/* 8026DE24  38 21 00 30 */	addi r1, r1, 0x30
/* 8026DE28  4E 80 00 20 */	blr 
