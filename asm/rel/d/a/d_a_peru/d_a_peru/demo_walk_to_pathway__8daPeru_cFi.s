lbl_80D4971C:
/* 80D4971C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D49720  7C 08 02 A6 */	mflr r0
/* 80D49724  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D49728  39 61 00 50 */	addi r11, r1, 0x50
/* 80D4972C  4B 61 8A B1 */	bl _savegpr_29
/* 80D49730  7C 7E 1B 78 */	mr r30, r3
/* 80D49734  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha /* 0x80D4C060@ha */
/* 80D49738  3B E3 C0 60 */	addi r31, r3, m__14daPeru_Param_c@l /* 0x80D4C060@l */
/* 80D4973C  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80D49740  2C 00 00 02 */	cmpwi r0, 2
/* 80D49744  41 82 00 9C */	beq lbl_80D497E0
/* 80D49748  40 80 02 48 */	bge lbl_80D49990
/* 80D4974C  2C 00 FF FF */	cmpwi r0, -1
/* 80D49750  41 82 02 40 */	beq lbl_80D49990
/* 80D49754  40 80 00 08 */	bge lbl_80D4975C
/* 80D49758  48 00 02 38 */	b lbl_80D49990
lbl_80D4975C:
/* 80D4975C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80D49760  2C 00 00 02 */	cmpwi r0, 2
/* 80D49764  41 82 00 24 */	beq lbl_80D49788
/* 80D49768  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80D4976C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80D49770  4B 3F C1 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D49774  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80D49778  38 00 00 02 */	li r0, 2
/* 80D4977C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80D49780  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80D49784  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80D49788:
/* 80D49788  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80D4978C  2C 00 00 09 */	cmpwi r0, 9
/* 80D49790  41 82 00 24 */	beq lbl_80D497B4
/* 80D49794  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80D49798  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80D4979C  4B 3F C0 FD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D497A0  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80D497A4  38 00 00 09 */	li r0, 9
/* 80D497A8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80D497AC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80D497B0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80D497B4:
/* 80D497B4  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80D497B8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80D497BC  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D497C0  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80D497C4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80D497C8  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80D497CC  38 00 00 00 */	li r0, 0
/* 80D497D0  B0 1E 0D D8 */	sth r0, 0xdd8(r30)
/* 80D497D4  38 00 00 02 */	li r0, 2
/* 80D497D8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80D497DC  48 00 01 B4 */	b lbl_80D49990
lbl_80D497E0:
/* 80D497E0  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80D497E4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D497E8  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80D497EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D497F0  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80D497F4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D497F8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D497FC  38 81 00 30 */	addi r4, r1, 0x30
/* 80D49800  4B 52 74 05 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80D49804  7C 64 1B 78 */	mr r4, r3
/* 80D49808  38 7E 0D 7A */	addi r3, r30, 0xd7a
/* 80D4980C  38 A0 08 00 */	li r5, 0x800
/* 80D49810  4B 52 73 81 */	bl cLib_chaseAngleS__FPsss
/* 80D49814  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80D49818  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80D4981C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80D49820  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80D49824  38 61 00 24 */	addi r3, r1, 0x24
/* 80D49828  38 81 00 30 */	addi r4, r1, 0x30
/* 80D4982C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D49830  4B 51 D3 05 */	bl __mi__4cXyzCFRC3Vec
/* 80D49834  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D49838  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D4983C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D49840  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D49844  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D49848  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D4984C  38 61 00 0C */	addi r3, r1, 0xc
/* 80D49850  4B 5F D8 E9 */	bl PSVECSquareMag
/* 80D49854  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D49858  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D4985C  40 81 00 58 */	ble lbl_80D498B4
/* 80D49860  FC 00 08 34 */	frsqrte f0, f1
/* 80D49864  C8 9F 00 E0 */	lfd f4, 0xe0(r31)
/* 80D49868  FC 44 00 32 */	fmul f2, f4, f0
/* 80D4986C  C8 7F 00 E8 */	lfd f3, 0xe8(r31)
/* 80D49870  FC 00 00 32 */	fmul f0, f0, f0
/* 80D49874  FC 01 00 32 */	fmul f0, f1, f0
/* 80D49878  FC 03 00 28 */	fsub f0, f3, f0
/* 80D4987C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D49880  FC 44 00 32 */	fmul f2, f4, f0
/* 80D49884  FC 00 00 32 */	fmul f0, f0, f0
/* 80D49888  FC 01 00 32 */	fmul f0, f1, f0
/* 80D4988C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D49890  FC 02 00 32 */	fmul f0, f2, f0
/* 80D49894  FC 44 00 32 */	fmul f2, f4, f0
/* 80D49898  FC 00 00 32 */	fmul f0, f0, f0
/* 80D4989C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D498A0  FC 03 00 28 */	fsub f0, f3, f0
/* 80D498A4  FC 02 00 32 */	fmul f0, f2, f0
/* 80D498A8  FC 21 00 32 */	fmul f1, f1, f0
/* 80D498AC  FC 20 08 18 */	frsp f1, f1
/* 80D498B0  48 00 00 88 */	b lbl_80D49938
lbl_80D498B4:
/* 80D498B4  C8 1F 00 F0 */	lfd f0, 0xf0(r31)
/* 80D498B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D498BC  40 80 00 10 */	bge lbl_80D498CC
/* 80D498C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D498C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D498C8  48 00 00 70 */	b lbl_80D49938
lbl_80D498CC:
/* 80D498CC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D498D0  80 81 00 08 */	lwz r4, 8(r1)
/* 80D498D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D498D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D498DC  7C 03 00 00 */	cmpw r3, r0
/* 80D498E0  41 82 00 14 */	beq lbl_80D498F4
/* 80D498E4  40 80 00 40 */	bge lbl_80D49924
/* 80D498E8  2C 03 00 00 */	cmpwi r3, 0
/* 80D498EC  41 82 00 20 */	beq lbl_80D4990C
/* 80D498F0  48 00 00 34 */	b lbl_80D49924
lbl_80D498F4:
/* 80D498F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D498F8  41 82 00 0C */	beq lbl_80D49904
/* 80D498FC  38 00 00 01 */	li r0, 1
/* 80D49900  48 00 00 28 */	b lbl_80D49928
lbl_80D49904:
/* 80D49904  38 00 00 02 */	li r0, 2
/* 80D49908  48 00 00 20 */	b lbl_80D49928
lbl_80D4990C:
/* 80D4990C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D49910  41 82 00 0C */	beq lbl_80D4991C
/* 80D49914  38 00 00 05 */	li r0, 5
/* 80D49918  48 00 00 10 */	b lbl_80D49928
lbl_80D4991C:
/* 80D4991C  38 00 00 03 */	li r0, 3
/* 80D49920  48 00 00 08 */	b lbl_80D49928
lbl_80D49924:
/* 80D49924  38 00 00 04 */	li r0, 4
lbl_80D49928:
/* 80D49928  2C 00 00 01 */	cmpwi r0, 1
/* 80D4992C  40 82 00 0C */	bne lbl_80D49938
/* 80D49930  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D49934  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D49938:
/* 80D49938  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 80D4993C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D49940  40 80 00 50 */	bge lbl_80D49990
/* 80D49944  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80D49948  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80D4994C  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80D49950  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80D49954  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80D49958  3C 60 80 D5 */	lis r3, lit_5372@ha /* 0x80D4C5B0@ha */
/* 80D4995C  38 83 C5 B0 */	addi r4, r3, lit_5372@l /* 0x80D4C5B0@l */
/* 80D49960  80 64 00 00 */	lwz r3, 0(r4)
/* 80D49964  80 04 00 04 */	lwz r0, 4(r4)
/* 80D49968  90 61 00 18 */	stw r3, 0x18(r1)
/* 80D4996C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D49970  80 04 00 08 */	lwz r0, 8(r4)
/* 80D49974  90 01 00 20 */	stw r0, 0x20(r1)
/* 80D49978  7F C3 F3 78 */	mr r3, r30
/* 80D4997C  38 81 00 18 */	addi r4, r1, 0x18
/* 80D49980  38 A0 00 00 */	li r5, 0
/* 80D49984  4B FF E9 E1 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D49988  38 60 00 01 */	li r3, 1
/* 80D4998C  48 00 00 08 */	b lbl_80D49994
lbl_80D49990:
/* 80D49990  38 60 00 00 */	li r3, 0
lbl_80D49994:
/* 80D49994  39 61 00 50 */	addi r11, r1, 0x50
/* 80D49998  4B 61 88 91 */	bl _restgpr_29
/* 80D4999C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D499A0  7C 08 03 A6 */	mtlr r0
/* 80D499A4  38 21 00 50 */	addi r1, r1, 0x50
/* 80D499A8  4E 80 00 20 */	blr 
