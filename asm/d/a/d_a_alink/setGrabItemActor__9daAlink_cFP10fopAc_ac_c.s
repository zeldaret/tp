lbl_800E5BB4:
/* 800E5BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E5BB8  7C 08 02 A6 */	mflr r0
/* 800E5BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E5BC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E5BC4  93 C1 00 08 */	stw r30, 8(r1)
/* 800E5BC8  7C 7E 1B 78 */	mr r30, r3
/* 800E5BCC  7C 9F 23 78 */	mr r31, r4
/* 800E5BD0  7F E3 FB 78 */	mr r3, r31
/* 800E5BD4  38 80 00 01 */	li r4, 1
/* 800E5BD8  4B F3 6F 71 */	bl fopAcM_setCarryNow__FP10fopAc_ac_ci
/* 800E5BDC  38 7E 28 2C */	addi r3, r30, 0x282c
/* 800E5BE0  7F E4 FB 78 */	mr r4, r31
/* 800E5BE4  48 07 90 D5 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800E5BE8  38 7E 1E B4 */	addi r3, r30, 0x1eb4
/* 800E5BEC  4B F9 32 89 */	bl ClrObj__16dBgS_PolyPassChkFv
/* 800E5BF0  38 7E 1E B4 */	addi r3, r30, 0x1eb4
/* 800E5BF4  4B F9 32 D5 */	bl ClrBomb__16dBgS_PolyPassChkFv
/* 800E5BF8  38 7E 1E B4 */	addi r3, r30, 0x1eb4
/* 800E5BFC  4B F9 33 8D */	bl ClrStatue__16dBgS_PolyPassChkFv
/* 800E5C00  38 7E 1E B4 */	addi r3, r30, 0x1eb4
/* 800E5C04  4B F9 32 A1 */	bl ClrLink__16dBgS_PolyPassChkFv
/* 800E5C08  38 7E 1F 08 */	addi r3, r30, 0x1f08
/* 800E5C0C  4B F9 32 69 */	bl ClrObj__16dBgS_PolyPassChkFv
/* 800E5C10  38 7E 1F 08 */	addi r3, r30, 0x1f08
/* 800E5C14  4B F9 32 B5 */	bl ClrBomb__16dBgS_PolyPassChkFv
/* 800E5C18  38 7E 1F 08 */	addi r3, r30, 0x1f08
/* 800E5C1C  4B F9 33 6D */	bl ClrStatue__16dBgS_PolyPassChkFv
/* 800E5C20  38 7E 1F 08 */	addi r3, r30, 0x1f08
/* 800E5C24  4B F9 32 81 */	bl ClrLink__16dBgS_PolyPassChkFv
/* 800E5C28  A8 1F 00 08 */	lha r0, 8(r31)
/* 800E5C2C  2C 00 02 21 */	cmpwi r0, 0x221
/* 800E5C30  41 82 00 0C */	beq lbl_800E5C3C
/* 800E5C34  2C 00 02 FD */	cmpwi r0, 0x2fd
/* 800E5C38  40 82 00 18 */	bne lbl_800E5C50
lbl_800E5C3C:
/* 800E5C3C  38 7E 1E B4 */	addi r3, r30, 0x1eb4
/* 800E5C40  4B F9 32 7D */	bl SetBomb__16dBgS_PolyPassChkFv
/* 800E5C44  38 7E 1F 08 */	addi r3, r30, 0x1f08
/* 800E5C48  4B F9 32 75 */	bl SetBomb__16dBgS_PolyPassChkFv
/* 800E5C4C  48 00 00 58 */	b lbl_800E5CA4
lbl_800E5C50:
/* 800E5C50  2C 00 01 98 */	cmpwi r0, 0x198
/* 800E5C54  40 82 00 18 */	bne lbl_800E5C6C
/* 800E5C58  38 7E 1E B4 */	addi r3, r30, 0x1eb4
/* 800E5C5C  4B F9 33 21 */	bl SetStatue__16dBgS_PolyPassChkFv
/* 800E5C60  38 7E 1F 08 */	addi r3, r30, 0x1f08
/* 800E5C64  4B F9 33 19 */	bl SetStatue__16dBgS_PolyPassChkFv
/* 800E5C68  48 00 00 3C */	b lbl_800E5CA4
lbl_800E5C6C:
/* 800E5C6C  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 800E5C70  40 82 00 24 */	bne lbl_800E5C94
/* 800E5C74  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 800E5C78  2C 00 00 03 */	cmpwi r0, 3
/* 800E5C7C  40 82 00 18 */	bne lbl_800E5C94
/* 800E5C80  38 7E 1E B4 */	addi r3, r30, 0x1eb4
/* 800E5C84  4B F9 32 15 */	bl SetLink__16dBgS_PolyPassChkFv
/* 800E5C88  38 7E 1F 08 */	addi r3, r30, 0x1f08
/* 800E5C8C  4B F9 32 0D */	bl SetLink__16dBgS_PolyPassChkFv
/* 800E5C90  48 00 00 14 */	b lbl_800E5CA4
lbl_800E5C94:
/* 800E5C94  38 7E 1E B4 */	addi r3, r30, 0x1eb4
/* 800E5C98  4B F9 31 D1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 800E5C9C  38 7E 1F 08 */	addi r3, r30, 0x1f08
/* 800E5CA0  4B F9 31 C9 */	bl SetObj__16dBgS_PolyPassChkFv
lbl_800E5CA4:
/* 800E5CA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E5CA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E5CAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E5CB0  7C 08 03 A6 */	mtlr r0
/* 800E5CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 800E5CB8  4E 80 00 20 */	blr 
