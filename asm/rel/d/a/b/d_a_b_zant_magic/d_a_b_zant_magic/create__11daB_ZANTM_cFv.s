lbl_8064FF54:
/* 8064FF54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8064FF58  7C 08 02 A6 */	mflr r0
/* 8064FF5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8064FF60  39 61 00 20 */	addi r11, r1, 0x20
/* 8064FF64  4B D1 22 79 */	bl _savegpr_29
/* 8064FF68  7C 7F 1B 78 */	mr r31, r3
/* 8064FF6C  3C 80 80 65 */	lis r4, cNullVec__6Z2Calc@ha /* 0x806504E8@ha */
/* 8064FF70  3B A4 04 E8 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x806504E8@l */
/* 8064FF74  3C 80 80 65 */	lis r4, lit_3721@ha /* 0x8065049C@ha */
/* 8064FF78  3B C4 04 9C */	addi r30, r4, lit_3721@l /* 0x8065049C@l */
/* 8064FF7C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8064FF80  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8064FF84  40 82 00 1C */	bne lbl_8064FFA0
/* 8064FF88  28 1F 00 00 */	cmplwi r31, 0
/* 8064FF8C  41 82 00 08 */	beq lbl_8064FF94
/* 8064FF90  48 00 01 19 */	bl __ct__11daB_ZANTM_cFv
lbl_8064FF94:
/* 8064FF94  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8064FF98  60 00 00 08 */	ori r0, r0, 8
/* 8064FF9C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8064FFA0:
/* 8064FFA0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8064FFA4  98 1F 05 F0 */	stb r0, 0x5f0(r31)
/* 8064FFA8  38 00 00 00 */	li r0, 0
/* 8064FFAC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8064FFB0  90 01 00 08 */	stw r0, 8(r1)
/* 8064FFB4  38 7F 06 34 */	addi r3, r31, 0x634
/* 8064FFB8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8064FFBC  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 8064FFC0  7F E6 FB 78 */	mr r6, r31
/* 8064FFC4  38 E0 00 01 */	li r7, 1
/* 8064FFC8  39 1F 05 F4 */	addi r8, r31, 0x5f4
/* 8064FFCC  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 8064FFD0  39 40 00 00 */	li r10, 0
/* 8064FFD4  4B A2 62 75 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8064FFD8  38 1F 05 AC */	addi r0, r31, 0x5ac
/* 8064FFDC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 8064FFE0  7F E3 FB 78 */	mr r3, r31
/* 8064FFE4  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8064FFE8  FC 40 08 90 */	fmr f2, f1
/* 8064FFEC  FC 60 08 90 */	fmr f3, f1
/* 8064FFF0  4B 9C A5 39 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8064FFF4  7F E3 FB 78 */	mr r3, r31
/* 8064FFF8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8064FFFC  FC 40 08 90 */	fmr f2, f1
/* 80650000  FC 60 08 90 */	fmr f3, f1
/* 80650004  4B 9C A5 35 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80650008  38 00 00 50 */	li r0, 0x50
/* 8065000C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80650010  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 80650014  38 7F 08 0C */	addi r3, r31, 0x80c
/* 80650018  38 80 00 FF */	li r4, 0xff
/* 8065001C  38 A0 00 00 */	li r5, 0
/* 80650020  7F E6 FB 78 */	mr r6, r31
/* 80650024  4B A3 38 3D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80650028  38 7F 0A B8 */	addi r3, r31, 0xab8
/* 8065002C  38 9D 00 20 */	addi r4, r29, 0x20
/* 80650030  4B A3 47 A1 */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80650034  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 80650038  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 8065003C  FC 40 08 90 */	fmr f2, f1
/* 80650040  4B A2 5F 19 */	bl SetWall__12dBgS_AcchCirFff
/* 80650044  38 00 00 00 */	li r0, 0
/* 80650048  98 1F 0B 2F */	stb r0, 0xb2f(r31)
/* 8065004C  38 00 00 02 */	li r0, 2
/* 80650050  98 1F 0A CC */	stb r0, 0xacc(r31)
/* 80650054  38 1F 08 0C */	addi r0, r31, 0x80c
/* 80650058  90 1F 0A FC */	stw r0, 0xafc(r31)
/* 8065005C  38 7F 08 48 */	addi r3, r31, 0x848
/* 80650060  38 9D 00 6C */	addi r4, r29, 0x6c
/* 80650064  4B A3 49 D1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80650068  38 1F 08 0C */	addi r0, r31, 0x80c
/* 8065006C  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 80650070  38 7F 09 80 */	addi r3, r31, 0x980
/* 80650074  38 9D 00 AC */	addi r4, r29, 0xac
/* 80650078  4B A3 49 BD */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8065007C  38 1F 08 0C */	addi r0, r31, 0x80c
/* 80650080  90 1F 09 C4 */	stw r0, 0x9c4(r31)
/* 80650084  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80650088  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8065008C  38 60 00 04 */	li r3, 4
/* 80650090  39 61 00 20 */	addi r11, r1, 0x20
/* 80650094  4B D1 21 95 */	bl _restgpr_29
/* 80650098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8065009C  7C 08 03 A6 */	mtlr r0
/* 806500A0  38 21 00 20 */	addi r1, r1, 0x20
/* 806500A4  4E 80 00 20 */	blr 
