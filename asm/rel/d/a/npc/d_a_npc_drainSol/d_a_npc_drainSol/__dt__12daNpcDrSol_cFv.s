lbl_809ADFE4:
/* 809ADFE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809ADFE8  7C 08 02 A6 */	mflr r0
/* 809ADFEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809ADFF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809ADFF4  93 C1 00 08 */	stw r30, 8(r1)
/* 809ADFF8  7C 7E 1B 79 */	or. r30, r3, r3
/* 809ADFFC  7C 9F 23 78 */	mr r31, r4
/* 809AE000  41 82 00 F0 */	beq lbl_809AE0F0
/* 809AE004  3C 60 80 9B */	lis r3, __vt__12daNpcDrSol_c@ha
/* 809AE008  38 03 FB 68 */	addi r0, r3, __vt__12daNpcDrSol_c@l
/* 809AE00C  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809AE010  38 7E 0D 28 */	addi r3, r30, 0xd28
/* 809AE014  88 1E 0D 39 */	lbz r0, 0xd39(r30)
/* 809AE018  54 00 10 3A */	slwi r0, r0, 2
/* 809AE01C  3C 80 80 9B */	lis r4, l_arcNames@ha
/* 809AE020  38 84 FA EC */	addi r4, r4, l_arcNames@l
/* 809AE024  7C 84 00 2E */	lwzx r4, r4, r0
/* 809AE028  4B 67 EF E0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809AE02C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809AE030  28 00 00 00 */	cmplwi r0, 0
/* 809AE034  41 82 00 0C */	beq lbl_809AE040
/* 809AE038  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809AE03C  4B 66 32 D4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809AE040:
/* 809AE040  34 1E 0B E0 */	addic. r0, r30, 0xbe0
/* 809AE044  41 82 00 84 */	beq lbl_809AE0C8
/* 809AE048  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809AE04C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809AE050  90 7E 0C 1C */	stw r3, 0xc1c(r30)
/* 809AE054  38 03 00 2C */	addi r0, r3, 0x2c
/* 809AE058  90 1E 0D 00 */	stw r0, 0xd00(r30)
/* 809AE05C  38 03 00 84 */	addi r0, r3, 0x84
/* 809AE060  90 1E 0D 18 */	stw r0, 0xd18(r30)
/* 809AE064  34 1E 0C E4 */	addic. r0, r30, 0xce4
/* 809AE068  41 82 00 54 */	beq lbl_809AE0BC
/* 809AE06C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809AE070  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809AE074  90 7E 0D 00 */	stw r3, 0xd00(r30)
/* 809AE078  38 03 00 58 */	addi r0, r3, 0x58
/* 809AE07C  90 1E 0D 18 */	stw r0, 0xd18(r30)
/* 809AE080  34 1E 0D 04 */	addic. r0, r30, 0xd04
/* 809AE084  41 82 00 10 */	beq lbl_809AE094
/* 809AE088  3C 60 80 9B */	lis r3, __vt__8cM3dGCyl@ha
/* 809AE08C  38 03 FC 10 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809AE090  90 1E 0D 18 */	stw r0, 0xd18(r30)
lbl_809AE094:
/* 809AE094  34 1E 0C E4 */	addic. r0, r30, 0xce4
/* 809AE098  41 82 00 24 */	beq lbl_809AE0BC
/* 809AE09C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809AE0A0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809AE0A4  90 1E 0D 00 */	stw r0, 0xd00(r30)
/* 809AE0A8  34 1E 0C E4 */	addic. r0, r30, 0xce4
/* 809AE0AC  41 82 00 10 */	beq lbl_809AE0BC
/* 809AE0B0  3C 60 80 9B */	lis r3, __vt__8cM3dGAab@ha
/* 809AE0B4  38 03 FC 1C */	addi r0, r3, __vt__8cM3dGAab@l
/* 809AE0B8  90 1E 0C FC */	stw r0, 0xcfc(r30)
lbl_809AE0BC:
/* 809AE0BC  38 7E 0B E0 */	addi r3, r30, 0xbe0
/* 809AE0C0  38 80 00 00 */	li r4, 0
/* 809AE0C4  4B 6D 60 20 */	b __dt__12dCcD_GObjInfFv
lbl_809AE0C8:
/* 809AE0C8  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809AE0CC  38 80 FF FF */	li r4, -1
/* 809AE0D0  4B 91 23 50 */	b __dt__10Z2CreatureFv
/* 809AE0D4  7F C3 F3 78 */	mr r3, r30
/* 809AE0D8  38 80 00 00 */	li r4, 0
/* 809AE0DC  48 00 11 29 */	bl __dt__8daNpcF_cFv
/* 809AE0E0  7F E0 07 35 */	extsh. r0, r31
/* 809AE0E4  40 81 00 0C */	ble lbl_809AE0F0
/* 809AE0E8  7F C3 F3 78 */	mr r3, r30
/* 809AE0EC  4B 92 0C 50 */	b __dl__FPv
lbl_809AE0F0:
/* 809AE0F0  7F C3 F3 78 */	mr r3, r30
/* 809AE0F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AE0F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809AE0FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AE100  7C 08 03 A6 */	mtlr r0
/* 809AE104  38 21 00 10 */	addi r1, r1, 0x10
/* 809AE108  4E 80 00 20 */	blr 
