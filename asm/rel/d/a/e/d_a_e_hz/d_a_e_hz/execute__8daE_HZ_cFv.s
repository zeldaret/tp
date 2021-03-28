lbl_806EF46C:
/* 806EF46C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806EF470  7C 08 02 A6 */	mflr r0
/* 806EF474  90 01 00 14 */	stw r0, 0x14(r1)
/* 806EF478  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806EF47C  7C 7F 1B 78 */	mr r31, r3
/* 806EF480  88 03 06 E8 */	lbz r0, 0x6e8(r3)
/* 806EF484  28 00 00 00 */	cmplwi r0, 0
/* 806EF488  41 82 00 40 */	beq lbl_806EF4C8
/* 806EF48C  4B FF FC B9 */	bl mtx_set__8daE_HZ_cFv
/* 806EF490  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806EF494  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 806EF498  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806EF49C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806EF4A0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806EF4A4  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806EF4A8  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806EF4AC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 806EF4B0  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806EF4B4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806EF4B8  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806EF4BC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 806EF4C0  38 60 00 01 */	li r3, 1
/* 806EF4C4  48 00 01 B4 */	b lbl_806EF678
lbl_806EF4C8:
/* 806EF4C8  A8 7F 06 D6 */	lha r3, 0x6d6(r31)
/* 806EF4CC  2C 03 00 00 */	cmpwi r3, 0
/* 806EF4D0  41 82 00 0C */	beq lbl_806EF4DC
/* 806EF4D4  38 03 FF FF */	addi r0, r3, -1
/* 806EF4D8  B0 1F 06 D6 */	sth r0, 0x6d6(r31)
lbl_806EF4DC:
/* 806EF4DC  A8 7F 06 D4 */	lha r3, 0x6d4(r31)
/* 806EF4E0  2C 03 00 00 */	cmpwi r3, 0
/* 806EF4E4  41 82 00 0C */	beq lbl_806EF4F0
/* 806EF4E8  38 03 FF FF */	addi r0, r3, -1
/* 806EF4EC  B0 1F 06 D4 */	sth r0, 0x6d4(r31)
lbl_806EF4F0:
/* 806EF4F0  A8 7F 06 D8 */	lha r3, 0x6d8(r31)
/* 806EF4F4  2C 03 00 00 */	cmpwi r3, 0
/* 806EF4F8  41 82 00 0C */	beq lbl_806EF504
/* 806EF4FC  38 03 FF FF */	addi r0, r3, -1
/* 806EF500  B0 1F 06 D8 */	sth r0, 0x6d8(r31)
lbl_806EF504:
/* 806EF504  A8 7F 06 DA */	lha r3, 0x6da(r31)
/* 806EF508  2C 03 00 00 */	cmpwi r3, 0
/* 806EF50C  41 82 00 0C */	beq lbl_806EF518
/* 806EF510  38 03 FF FF */	addi r0, r3, -1
/* 806EF514  B0 1F 06 DA */	sth r0, 0x6da(r31)
lbl_806EF518:
/* 806EF518  A8 7F 06 DC */	lha r3, 0x6dc(r31)
/* 806EF51C  2C 03 00 00 */	cmpwi r3, 0
/* 806EF520  41 82 00 0C */	beq lbl_806EF52C
/* 806EF524  38 03 FF FF */	addi r0, r3, -1
/* 806EF528  B0 1F 06 DC */	sth r0, 0x6dc(r31)
lbl_806EF52C:
/* 806EF52C  A8 7F 06 DE */	lha r3, 0x6de(r31)
/* 806EF530  2C 03 00 00 */	cmpwi r3, 0
/* 806EF534  41 82 00 0C */	beq lbl_806EF540
/* 806EF538  38 03 FF FF */	addi r0, r3, -1
/* 806EF53C  B0 1F 06 DE */	sth r0, 0x6de(r31)
lbl_806EF540:
/* 806EF540  A8 7F 06 E0 */	lha r3, 0x6e0(r31)
/* 806EF544  2C 03 00 00 */	cmpwi r3, 0
/* 806EF548  41 82 00 34 */	beq lbl_806EF57C
/* 806EF54C  38 03 FF FF */	addi r0, r3, -1
/* 806EF550  B0 1F 06 E0 */	sth r0, 0x6e0(r31)
/* 806EF554  A8 1F 06 E0 */	lha r0, 0x6e0(r31)
/* 806EF558  2C 00 00 00 */	cmpwi r0, 0
/* 806EF55C  40 82 00 20 */	bne lbl_806EF57C
/* 806EF560  4B A9 20 E0 */	b dCam_getBody__Fv
/* 806EF564  4B A9 1F 9C */	b GetForceLockOnActor__9dCamera_cFv
/* 806EF568  7C 03 F8 40 */	cmplw r3, r31
/* 806EF56C  40 82 00 10 */	bne lbl_806EF57C
/* 806EF570  4B A9 20 D0 */	b dCam_getBody__Fv
/* 806EF574  7F E4 FB 78 */	mr r4, r31
/* 806EF578  4B A9 20 24 */	b ForceLockOff__9dCamera_cFP10fopAc_ac_c
lbl_806EF57C:
/* 806EF57C  4B A9 20 C4 */	b dCam_getBody__Fv
/* 806EF580  4B A9 1F 80 */	b GetForceLockOnActor__9dCamera_cFv
/* 806EF584  7C 03 F8 40 */	cmplw r3, r31
/* 806EF588  40 82 00 38 */	bne lbl_806EF5C0
/* 806EF58C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806EF590  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806EF594  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806EF598  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 806EF59C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806EF5A0  3C 60 80 6F */	lis r3, lit_3966@ha
/* 806EF5A4  C0 03 08 60 */	lfs f0, lit_3966@l(r3)
/* 806EF5A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 806EF5AC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806EF5B0  40 80 00 10 */	bge lbl_806EF5C0
/* 806EF5B4  4B A9 20 8C */	b dCam_getBody__Fv
/* 806EF5B8  7F E4 FB 78 */	mr r4, r31
/* 806EF5BC  4B A9 1F E0 */	b ForceLockOff__9dCamera_cFP10fopAc_ac_c
lbl_806EF5C0:
/* 806EF5C0  A8 7F 06 E2 */	lha r3, 0x6e2(r31)
/* 806EF5C4  2C 03 00 00 */	cmpwi r3, 0
/* 806EF5C8  41 82 00 34 */	beq lbl_806EF5FC
/* 806EF5CC  38 03 FF FF */	addi r0, r3, -1
/* 806EF5D0  B0 1F 06 E2 */	sth r0, 0x6e2(r31)
/* 806EF5D4  A8 1F 06 E2 */	lha r0, 0x6e2(r31)
/* 806EF5D8  2C 00 00 00 */	cmpwi r0, 0
/* 806EF5DC  40 82 00 20 */	bne lbl_806EF5FC
/* 806EF5E0  4B A9 20 60 */	b dCam_getBody__Fv
/* 806EF5E4  4B A9 1F 1C */	b GetForceLockOnActor__9dCamera_cFv
/* 806EF5E8  7C 03 F8 40 */	cmplw r3, r31
/* 806EF5EC  41 82 00 10 */	beq lbl_806EF5FC
/* 806EF5F0  4B A9 20 50 */	b dCam_getBody__Fv
/* 806EF5F4  7F E4 FB 78 */	mr r4, r31
/* 806EF5F8  4B A9 1F 3C */	b ForceLockOn__9dCamera_cFP10fopAc_ac_c
lbl_806EF5FC:
/* 806EF5FC  38 7F 06 94 */	addi r3, r31, 0x694
/* 806EF600  38 80 00 00 */	li r4, 0
/* 806EF604  38 A0 02 00 */	li r5, 0x200
/* 806EF608  4B B8 15 88 */	b cLib_chaseAngleS__FPsss
/* 806EF60C  38 7F 06 92 */	addi r3, r31, 0x692
/* 806EF610  38 80 00 00 */	li r4, 0
/* 806EF614  38 A0 02 00 */	li r5, 0x200
/* 806EF618  4B B8 15 78 */	b cLib_chaseAngleS__FPsss
/* 806EF61C  38 7F 06 9A */	addi r3, r31, 0x69a
/* 806EF620  38 80 00 00 */	li r4, 0
/* 806EF624  38 A0 02 00 */	li r5, 0x200
/* 806EF628  4B B8 15 68 */	b cLib_chaseAngleS__FPsss
/* 806EF62C  38 7F 06 98 */	addi r3, r31, 0x698
/* 806EF630  38 80 00 00 */	li r4, 0
/* 806EF634  38 A0 02 00 */	li r5, 0x200
/* 806EF638  4B B8 15 58 */	b cLib_chaseAngleS__FPsss
/* 806EF63C  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 806EF640  38 80 00 00 */	li r4, 0
/* 806EF644  38 A0 02 00 */	li r5, 0x200
/* 806EF648  4B B8 15 48 */	b cLib_chaseAngleS__FPsss
/* 806EF64C  38 7F 06 9E */	addi r3, r31, 0x69e
/* 806EF650  38 80 00 00 */	li r4, 0
/* 806EF654  38 A0 02 00 */	li r5, 0x200
/* 806EF658  4B B8 15 38 */	b cLib_chaseAngleS__FPsss
/* 806EF65C  7F E3 FB 78 */	mr r3, r31
/* 806EF660  4B FF F8 85 */	bl action__8daE_HZ_cFv
/* 806EF664  7F E3 FB 78 */	mr r3, r31
/* 806EF668  4B FF FA DD */	bl mtx_set__8daE_HZ_cFv
/* 806EF66C  7F E3 FB 78 */	mr r3, r31
/* 806EF670  4B FF FC 59 */	bl cc_set__8daE_HZ_cFv
/* 806EF674  38 60 00 01 */	li r3, 1
lbl_806EF678:
/* 806EF678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806EF67C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806EF680  7C 08 03 A6 */	mtlr r0
/* 806EF684  38 21 00 10 */	addi r1, r1, 0x10
/* 806EF688  4E 80 00 20 */	blr 
