lbl_8015C738:
/* 8015C738  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8015C73C  7C 08 02 A6 */	mflr r0
/* 8015C740  90 01 00 64 */	stw r0, 0x64(r1)
/* 8015C744  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8015C748  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8015C74C  7C 7F 1B 78 */	mr r31, r3
/* 8015C750  38 00 00 00 */	li r0, 0
/* 8015C754  B0 03 09 28 */	sth r0, 0x928(r3)
/* 8015C758  38 7F 07 E0 */	addi r3, r31, 0x7e0
/* 8015C75C  4B F2 7D 05 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8015C760  28 03 00 00 */	cmplwi r3, 0
/* 8015C764  41 82 00 B4 */	beq lbl_8015C818
/* 8015C768  38 7F 07 E0 */	addi r3, r31, 0x7e0
/* 8015C76C  4B F2 7D 8D */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8015C770  28 03 00 00 */	cmplwi r3, 0
/* 8015C774  41 82 03 0C */	beq lbl_8015CA80
/* 8015C778  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8015C77C  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8015C780  40 82 00 0C */	bne lbl_8015C78C
/* 8015C784  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8015C788  41 82 02 F8 */	beq lbl_8015CA80
lbl_8015C78C:
/* 8015C78C  38 00 00 64 */	li r0, 0x64
/* 8015C790  B0 1F 09 28 */	sth r0, 0x928(r31)
/* 8015C794  7F E3 FB 78 */	mr r3, r31
/* 8015C798  4B ED B2 DD */	bl show__12daItemBase_cFv
/* 8015C79C  88 1F 09 48 */	lbz r0, 0x948(r31)
/* 8015C7A0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8015C7A4  98 1F 09 48 */	stb r0, 0x948(r31)
/* 8015C7A8  88 1F 09 48 */	lbz r0, 0x948(r31)
/* 8015C7AC  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8015C7B0  98 1F 09 48 */	stb r0, 0x948(r31)
/* 8015C7B4  88 1F 09 48 */	lbz r0, 0x948(r31)
/* 8015C7B8  60 00 00 02 */	ori r0, r0, 2
/* 8015C7BC  98 1F 09 48 */	stb r0, 0x948(r31)
/* 8015C7C0  7F E3 FB 78 */	mr r3, r31
/* 8015C7C4  38 80 00 01 */	li r4, 1
/* 8015C7C8  48 00 14 79 */	bl initSpeed__8daItem_cFi
/* 8015C7CC  38 00 FF FF */	li r0, -1
/* 8015C7D0  90 1F 08 08 */	stw r0, 0x808(r31)
/* 8015C7D4  3C 60 80 16 */	lis r3, itemGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x8015B254@ha */
/* 8015C7D8  38 03 B2 54 */	addi r0, r3, itemGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x8015B254@l */
/* 8015C7DC  90 1F 08 D0 */	stw r0, 0x8d0(r31)
/* 8015C7E0  3C 60 80 16 */	lis r3, itemGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x8015B320@ha */
/* 8015C7E4  38 03 B3 20 */	addi r0, r3, itemGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x8015B320@l */
/* 8015C7E8  90 1F 08 84 */	stw r0, 0x884(r31)
/* 8015C7EC  80 1F 08 0C */	lwz r0, 0x80c(r31)
/* 8015C7F0  60 00 00 01 */	ori r0, r0, 1
/* 8015C7F4  90 1F 08 0C */	stw r0, 0x80c(r31)
/* 8015C7F8  80 1F 07 F8 */	lwz r0, 0x7f8(r31)
/* 8015C7FC  60 00 00 01 */	ori r0, r0, 1
/* 8015C800  90 1F 07 F8 */	stw r0, 0x7f8(r31)
/* 8015C804  38 00 00 05 */	li r0, 5
/* 8015C808  98 1F 09 5E */	stb r0, 0x95e(r31)
/* 8015C80C  7F E3 FB 78 */	mr r3, r31
/* 8015C810  4B FF F6 51 */	bl procInitNormal__8daItem_cFv
/* 8015C814  48 00 02 6C */	b lbl_8015CA80
lbl_8015C818:
/* 8015C818  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015C81C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015C820  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8015C824  7F C3 F3 78 */	mr r3, r30
/* 8015C828  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8015C82C  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 8015C830  7D 89 03 A6 */	mtctr r12
/* 8015C834  4E 80 04 21 */	bctrl 
/* 8015C838  2C 03 00 00 */	cmpwi r3, 0
/* 8015C83C  41 82 02 44 */	beq lbl_8015CA80
/* 8015C840  38 61 00 24 */	addi r3, r1, 0x24
/* 8015C844  7F C4 F3 78 */	mr r4, r30
/* 8015C848  48 00 17 AD */	bl getLeftHandPos__9daPy_py_cCFv
/* 8015C84C  38 61 00 18 */	addi r3, r1, 0x18
/* 8015C850  38 81 00 24 */	addi r4, r1, 0x24
/* 8015C854  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8015C858  48 10 A2 DD */	bl __mi__4cXyzCFRC3Vec
/* 8015C85C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8015C860  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8015C864  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8015C868  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8015C86C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8015C870  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8015C874  38 61 00 3C */	addi r3, r1, 0x3c
/* 8015C878  48 1E A8 C1 */	bl PSVECSquareMag
/* 8015C87C  C0 02 9B 50 */	lfs f0, lit_3857(r2)
/* 8015C880  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015C884  40 81 00 58 */	ble lbl_8015C8DC
/* 8015C888  FC 00 08 34 */	frsqrte f0, f1
/* 8015C88C  C8 82 9B 58 */	lfd f4, lit_3858(r2)
/* 8015C890  FC 44 00 32 */	fmul f2, f4, f0
/* 8015C894  C8 62 9B 60 */	lfd f3, lit_3859(r2)
/* 8015C898  FC 00 00 32 */	fmul f0, f0, f0
/* 8015C89C  FC 01 00 32 */	fmul f0, f1, f0
/* 8015C8A0  FC 03 00 28 */	fsub f0, f3, f0
/* 8015C8A4  FC 02 00 32 */	fmul f0, f2, f0
/* 8015C8A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8015C8AC  FC 00 00 32 */	fmul f0, f0, f0
/* 8015C8B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8015C8B4  FC 03 00 28 */	fsub f0, f3, f0
/* 8015C8B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8015C8BC  FC 44 00 32 */	fmul f2, f4, f0
/* 8015C8C0  FC 00 00 32 */	fmul f0, f0, f0
/* 8015C8C4  FC 01 00 32 */	fmul f0, f1, f0
/* 8015C8C8  FC 03 00 28 */	fsub f0, f3, f0
/* 8015C8CC  FC 02 00 32 */	fmul f0, f2, f0
/* 8015C8D0  FC 21 00 32 */	fmul f1, f1, f0
/* 8015C8D4  FC 20 08 18 */	frsp f1, f1
/* 8015C8D8  48 00 00 88 */	b lbl_8015C960
lbl_8015C8DC:
/* 8015C8DC  C8 02 9B 68 */	lfd f0, lit_3860(r2)
/* 8015C8E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015C8E4  40 80 00 10 */	bge lbl_8015C8F4
/* 8015C8E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8015C8EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8015C8F0  48 00 00 70 */	b lbl_8015C960
lbl_8015C8F4:
/* 8015C8F4  D0 21 00 08 */	stfs f1, 8(r1)
/* 8015C8F8  80 81 00 08 */	lwz r4, 8(r1)
/* 8015C8FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8015C900  3C 00 7F 80 */	lis r0, 0x7f80
/* 8015C904  7C 03 00 00 */	cmpw r3, r0
/* 8015C908  41 82 00 14 */	beq lbl_8015C91C
/* 8015C90C  40 80 00 40 */	bge lbl_8015C94C
/* 8015C910  2C 03 00 00 */	cmpwi r3, 0
/* 8015C914  41 82 00 20 */	beq lbl_8015C934
/* 8015C918  48 00 00 34 */	b lbl_8015C94C
lbl_8015C91C:
/* 8015C91C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8015C920  41 82 00 0C */	beq lbl_8015C92C
/* 8015C924  38 00 00 01 */	li r0, 1
/* 8015C928  48 00 00 28 */	b lbl_8015C950
lbl_8015C92C:
/* 8015C92C  38 00 00 02 */	li r0, 2
/* 8015C930  48 00 00 20 */	b lbl_8015C950
lbl_8015C934:
/* 8015C934  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8015C938  41 82 00 0C */	beq lbl_8015C944
/* 8015C93C  38 00 00 05 */	li r0, 5
/* 8015C940  48 00 00 10 */	b lbl_8015C950
lbl_8015C944:
/* 8015C944  38 00 00 03 */	li r0, 3
/* 8015C948  48 00 00 08 */	b lbl_8015C950
lbl_8015C94C:
/* 8015C94C  38 00 00 04 */	li r0, 4
lbl_8015C950:
/* 8015C950  2C 00 00 01 */	cmpwi r0, 1
/* 8015C954  40 82 00 0C */	bne lbl_8015C960
/* 8015C958  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8015C95C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8015C960:
/* 8015C960  C0 02 9B A0 */	lfs f0, lit_4524(r2)
/* 8015C964  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015C968  40 80 01 18 */	bge lbl_8015CA80
/* 8015C96C  C0 02 9B 50 */	lfs f0, lit_3857(r2)
/* 8015C970  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8015C974  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8015C978  C0 02 9B A4 */	lfs f0, lit_4665(r2)
/* 8015C97C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8015C980  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8015C984  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8015C988  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8015C98C  4B EA FA 51 */	bl mDoMtx_YrotS__FPA4_fs
/* 8015C990  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8015C994  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8015C998  38 81 00 30 */	addi r4, r1, 0x30
/* 8015C99C  7C 85 23 78 */	mr r5, r4
/* 8015C9A0  48 1E A3 CD */	bl PSMTXMultVec
/* 8015C9A4  38 61 00 0C */	addi r3, r1, 0xc
/* 8015C9A8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8015C9AC  38 A1 00 30 */	addi r5, r1, 0x30
/* 8015C9B0  48 10 A1 35 */	bl __pl__4cXyzCFRC3Vec
/* 8015C9B4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8015C9B8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8015C9BC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8015C9C0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8015C9C4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8015C9C8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8015C9CC  C0 22 9B A8 */	lfs f1, lit_4666(r2)
/* 8015C9D0  48 10 AF BD */	bl cM_rndFX__Ff
/* 8015C9D4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8015C9D8  C8 42 9B B0 */	lfd f2, lit_4668(r2)
/* 8015C9DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8015C9E0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8015C9E4  3C 00 43 30 */	lis r0, 0x4330
/* 8015C9E8  90 01 00 48 */	stw r0, 0x48(r1)
/* 8015C9EC  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8015C9F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8015C9F4  EC 00 08 2A */	fadds f0, f0, f1
/* 8015C9F8  FC 00 00 1E */	fctiwz f0, f0
/* 8015C9FC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8015CA00  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8015CA04  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8015CA08  7F E3 FB 78 */	mr r3, r31
/* 8015CA0C  4B ED B0 69 */	bl show__12daItemBase_cFv
/* 8015CA10  88 1F 09 48 */	lbz r0, 0x948(r31)
/* 8015CA14  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8015CA18  98 1F 09 48 */	stb r0, 0x948(r31)
/* 8015CA1C  88 1F 09 48 */	lbz r0, 0x948(r31)
/* 8015CA20  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8015CA24  98 1F 09 48 */	stb r0, 0x948(r31)
/* 8015CA28  88 1F 09 48 */	lbz r0, 0x948(r31)
/* 8015CA2C  60 00 00 02 */	ori r0, r0, 2
/* 8015CA30  98 1F 09 48 */	stb r0, 0x948(r31)
/* 8015CA34  7F E3 FB 78 */	mr r3, r31
/* 8015CA38  38 80 00 01 */	li r4, 1
/* 8015CA3C  48 00 12 05 */	bl initSpeed__8daItem_cFi
/* 8015CA40  38 00 FF FF */	li r0, -1
/* 8015CA44  90 1F 08 08 */	stw r0, 0x808(r31)
/* 8015CA48  3C 60 80 16 */	lis r3, itemGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x8015B254@ha */
/* 8015CA4C  38 03 B2 54 */	addi r0, r3, itemGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x8015B254@l */
/* 8015CA50  90 1F 08 D0 */	stw r0, 0x8d0(r31)
/* 8015CA54  3C 60 80 16 */	lis r3, itemGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x8015B320@ha */
/* 8015CA58  38 03 B3 20 */	addi r0, r3, itemGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x8015B320@l */
/* 8015CA5C  90 1F 08 84 */	stw r0, 0x884(r31)
/* 8015CA60  80 1F 08 0C */	lwz r0, 0x80c(r31)
/* 8015CA64  60 00 00 01 */	ori r0, r0, 1
/* 8015CA68  90 1F 08 0C */	stw r0, 0x80c(r31)
/* 8015CA6C  80 1F 07 F8 */	lwz r0, 0x7f8(r31)
/* 8015CA70  60 00 00 01 */	ori r0, r0, 1
/* 8015CA74  90 1F 07 F8 */	stw r0, 0x7f8(r31)
/* 8015CA78  7F E3 FB 78 */	mr r3, r31
/* 8015CA7C  4B FF F3 E5 */	bl procInitNormal__8daItem_cFv
lbl_8015CA80:
/* 8015CA80  38 7F 09 04 */	addi r3, r31, 0x904
/* 8015CA84  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8015CA88  48 11 27 55 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8015CA8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015CA90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015CA94  38 63 23 3C */	addi r3, r3, 0x233c
/* 8015CA98  38 9F 07 E0 */	addi r4, r31, 0x7e0
/* 8015CA9C  48 10 81 0D */	bl Set__4cCcSFP8cCcD_Obj
/* 8015CAA0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8015CAA4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8015CAA8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8015CAAC  7C 08 03 A6 */	mtlr r0
/* 8015CAB0  38 21 00 60 */	addi r1, r1, 0x60
/* 8015CAB4  4E 80 00 20 */	blr 
