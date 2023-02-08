lbl_80A96798:
/* 80A96798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9679C  7C 08 02 A6 */	mflr r0
/* 80A967A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A967A4  3C 60 80 A9 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80A96C40@ha */
/* 80A967A8  38 83 6C 40 */	addi r4, r3, cNullVec__6Z2Calc@l /* 0x80A96C40@l */
/* 80A967AC  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A967B0  38 A3 21 80 */	addi r5, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80A967B4  80 65 00 00 */	lwz r3, 0(r5)
/* 80A967B8  80 05 00 04 */	lwz r0, 4(r5)
/* 80A967BC  90 64 0B DC */	stw r3, 0xbdc(r4)
/* 80A967C0  90 04 0B E0 */	stw r0, 0xbe0(r4)
/* 80A967C4  80 05 00 08 */	lwz r0, 8(r5)
/* 80A967C8  90 04 0B E4 */	stw r0, 0xbe4(r4)
/* 80A967CC  38 64 0B DC */	addi r3, r4, 0xbdc
/* 80A967D0  80 A4 0B 64 */	lwz r5, 0xb64(r4)
/* 80A967D4  80 04 0B 68 */	lwz r0, 0xb68(r4)
/* 80A967D8  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80A967DC  90 03 00 10 */	stw r0, 0x10(r3)
/* 80A967E0  80 04 0B 6C */	lwz r0, 0xb6c(r4)
/* 80A967E4  90 03 00 14 */	stw r0, 0x14(r3)
/* 80A967E8  80 A4 0B 70 */	lwz r5, 0xb70(r4)
/* 80A967EC  80 04 0B 74 */	lwz r0, 0xb74(r4)
/* 80A967F0  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80A967F4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80A967F8  80 04 0B 78 */	lwz r0, 0xb78(r4)
/* 80A967FC  90 03 00 20 */	stw r0, 0x20(r3)
/* 80A96800  80 A4 0B 7C */	lwz r5, 0xb7c(r4)
/* 80A96804  80 04 0B 80 */	lwz r0, 0xb80(r4)
/* 80A96808  90 A3 00 24 */	stw r5, 0x24(r3)
/* 80A9680C  90 03 00 28 */	stw r0, 0x28(r3)
/* 80A96810  80 04 0B 84 */	lwz r0, 0xb84(r4)
/* 80A96814  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80A96818  80 A4 0B 88 */	lwz r5, 0xb88(r4)
/* 80A9681C  80 04 0B 8C */	lwz r0, 0xb8c(r4)
/* 80A96820  90 A3 00 30 */	stw r5, 0x30(r3)
/* 80A96824  90 03 00 34 */	stw r0, 0x34(r3)
/* 80A96828  80 04 0B 90 */	lwz r0, 0xb90(r4)
/* 80A9682C  90 03 00 38 */	stw r0, 0x38(r3)
/* 80A96830  80 A4 0B 94 */	lwz r5, 0xb94(r4)
/* 80A96834  80 04 0B 98 */	lwz r0, 0xb98(r4)
/* 80A96838  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 80A9683C  90 03 00 40 */	stw r0, 0x40(r3)
/* 80A96840  80 04 0B 9C */	lwz r0, 0xb9c(r4)
/* 80A96844  90 03 00 44 */	stw r0, 0x44(r3)
/* 80A96848  80 A4 0B A0 */	lwz r5, 0xba0(r4)
/* 80A9684C  80 04 0B A4 */	lwz r0, 0xba4(r4)
/* 80A96850  90 A3 00 48 */	stw r5, 0x48(r3)
/* 80A96854  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80A96858  80 04 0B A8 */	lwz r0, 0xba8(r4)
/* 80A9685C  90 03 00 50 */	stw r0, 0x50(r3)
/* 80A96860  80 A4 0B AC */	lwz r5, 0xbac(r4)
/* 80A96864  80 04 0B B0 */	lwz r0, 0xbb0(r4)
/* 80A96868  90 A3 00 54 */	stw r5, 0x54(r3)
/* 80A9686C  90 03 00 58 */	stw r0, 0x58(r3)
/* 80A96870  80 04 0B B4 */	lwz r0, 0xbb4(r4)
/* 80A96874  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80A96878  80 A4 0B B8 */	lwz r5, 0xbb8(r4)
/* 80A9687C  80 04 0B BC */	lwz r0, 0xbbc(r4)
/* 80A96880  90 A3 00 60 */	stw r5, 0x60(r3)
/* 80A96884  90 03 00 64 */	stw r0, 0x64(r3)
/* 80A96888  80 04 0B C0 */	lwz r0, 0xbc0(r4)
/* 80A9688C  90 03 00 68 */	stw r0, 0x68(r3)
/* 80A96890  80 A4 0B C4 */	lwz r5, 0xbc4(r4)
/* 80A96894  80 04 0B C8 */	lwz r0, 0xbc8(r4)
/* 80A96898  90 A3 00 6C */	stw r5, 0x6c(r3)
/* 80A9689C  90 03 00 70 */	stw r0, 0x70(r3)
/* 80A968A0  80 04 0B CC */	lwz r0, 0xbcc(r4)
/* 80A968A4  90 03 00 74 */	stw r0, 0x74(r3)
/* 80A968A8  80 A4 0B D0 */	lwz r5, 0xbd0(r4)
/* 80A968AC  80 04 0B D4 */	lwz r0, 0xbd4(r4)
/* 80A968B0  90 A3 00 78 */	stw r5, 0x78(r3)
/* 80A968B4  90 03 00 7C */	stw r0, 0x7c(r3)
/* 80A968B8  80 04 0B D8 */	lwz r0, 0xbd8(r4)
/* 80A968BC  90 03 00 80 */	stw r0, 0x80(r3)
/* 80A968C0  3C 60 80 A9 */	lis r3, __vt__24daNpc_Pachi_Besu_Param_c@ha /* 0x80A97AB0@ha */
/* 80A968C4  38 03 7A B0 */	addi r0, r3, __vt__24daNpc_Pachi_Besu_Param_c@l /* 0x80A97AB0@l */
/* 80A968C8  3C 60 80 A9 */	lis r3, l_HIO@ha /* 0x80A97B14@ha */
/* 80A968CC  94 03 7B 14 */	stwu r0, l_HIO@l(r3)  /* 0x80A97B14@l */
/* 80A968D0  3C 80 80 A9 */	lis r4, __dt__24daNpc_Pachi_Besu_Param_cFv@ha /* 0x80A96A00@ha */
/* 80A968D4  38 84 6A 00 */	addi r4, r4, __dt__24daNpc_Pachi_Besu_Param_cFv@l /* 0x80A96A00@l */
/* 80A968D8  3C A0 80 A9 */	lis r5, lit_3963@ha /* 0x80A97B08@ha */
/* 80A968DC  38 A5 7B 08 */	addi r5, r5, lit_3963@l /* 0x80A97B08@l */
/* 80A968E0  4B FF C4 19 */	bl __register_global_object
/* 80A968E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A968E8  7C 08 03 A6 */	mtlr r0
/* 80A968EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A968F0  4E 80 00 20 */	blr 
