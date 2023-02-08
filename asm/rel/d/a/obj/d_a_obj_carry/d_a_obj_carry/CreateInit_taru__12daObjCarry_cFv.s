lbl_804707E0:
/* 804707E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804707E4  7C 08 02 A6 */	mflr r0
/* 804707E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804707EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804707F0  7C 7F 1B 78 */	mr r31, r3
/* 804707F4  38 7F 0E 10 */	addi r3, r31, 0xe10
/* 804707F8  7F E4 FB 78 */	mr r4, r31
/* 804707FC  3C A0 80 48 */	lis r5, taru_jc_data@ha /* 0x8047A71C@ha */
/* 80470800  38 A5 A7 1C */	addi r5, r5, taru_jc_data@l /* 0x8047A71C@l */
/* 80470804  80 DF 05 70 */	lwz r6, 0x570(r31)
/* 80470808  38 E0 00 01 */	li r7, 1
/* 8047080C  4B BC 54 95 */	bl init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli
/* 80470810  2C 03 00 00 */	cmpwi r3, 0
/* 80470814  40 82 00 0C */	bne lbl_80470820
/* 80470818  38 60 00 00 */	li r3, 0
/* 8047081C  48 00 00 10 */	b lbl_8047082C
lbl_80470820:
/* 80470820  7F E3 FB 78 */	mr r3, r31
/* 80470824  48 00 2B C5 */	bl mode_init_wait__12daObjCarry_cFv
/* 80470828  38 60 00 01 */	li r3, 1
lbl_8047082C:
/* 8047082C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80470830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80470834  7C 08 03 A6 */	mtlr r0
/* 80470838  38 21 00 10 */	addi r1, r1, 0x10
/* 8047083C  4E 80 00 20 */	blr 
