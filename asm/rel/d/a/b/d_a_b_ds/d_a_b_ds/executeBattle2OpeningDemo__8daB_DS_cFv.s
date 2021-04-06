lbl_805D28D0:
/* 805D28D0  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 805D28D4  7C 08 02 A6 */	mflr r0
/* 805D28D8  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 805D28DC  39 61 01 D0 */	addi r11, r1, 0x1d0
/* 805D28E0  4B D8 F8 D9 */	bl _savegpr_20
/* 805D28E4  7C 7F 1B 78 */	mr r31, r3
/* 805D28E8  3C 60 80 5E */	lis r3, lit_1109@ha /* 0x805DDA70@ha */
/* 805D28EC  3B A3 DA 70 */	addi r29, r3, lit_1109@l /* 0x805DDA70@l */
/* 805D28F0  3C 60 80 5E */	lis r3, lit_3932@ha /* 0x805DCA54@ha */
/* 805D28F4  3B C3 CA 54 */	addi r30, r3, lit_3932@l /* 0x805DCA54@l */
/* 805D28F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D28FC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D2900  88 1C 5D B0 */	lbz r0, 0x5db0(r28)
/* 805D2904  7C 00 07 74 */	extsb r0, r0
/* 805D2908  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805D290C  7C 7C 02 14 */	add r3, r28, r0
/* 805D2910  83 43 5D 74 */	lwz r26, 0x5d74(r3)
/* 805D2914  83 7C 5D AC */	lwz r27, 0x5dac(r28)
/* 805D2918  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D291C  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 805D2920  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D2924  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D2928  88 1D 05 34 */	lbz r0, 0x534(r29)
/* 805D292C  7C 00 07 75 */	extsb. r0, r0
/* 805D2930  40 82 00 BC */	bne lbl_805D29EC
/* 805D2934  C0 5E 04 18 */	lfs f2, 0x418(r30)
/* 805D2938  D0 41 01 50 */	stfs f2, 0x150(r1)
/* 805D293C  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 805D2940  D0 21 01 54 */	stfs f1, 0x154(r1)
/* 805D2944  C0 1E 04 1C */	lfs f0, 0x41c(r30)
/* 805D2948  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 805D294C  D0 5D 05 50 */	stfs f2, 0x550(r29)
/* 805D2950  38 7D 05 50 */	addi r3, r29, 0x550
/* 805D2954  D0 23 00 04 */	stfs f1, 4(r3)
/* 805D2958  D0 03 00 08 */	stfs f0, 8(r3)
/* 805D295C  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2960  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2964  38 BD 05 28 */	addi r5, r29, 0x528
/* 805D2968  4B FF 88 51 */	bl __register_global_object
/* 805D296C  C0 5E 04 20 */	lfs f2, 0x420(r30)
/* 805D2970  D0 41 01 44 */	stfs f2, 0x144(r1)
/* 805D2974  C0 3E 01 20 */	lfs f1, 0x120(r30)
/* 805D2978  D0 21 01 48 */	stfs f1, 0x148(r1)
/* 805D297C  C0 1E 04 24 */	lfs f0, 0x424(r30)
/* 805D2980  D0 01 01 4C */	stfs f0, 0x14c(r1)
/* 805D2984  38 7D 05 50 */	addi r3, r29, 0x550
/* 805D2988  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 805D298C  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 805D2990  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805D2994  38 63 00 0C */	addi r3, r3, 0xc
/* 805D2998  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D299C  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D29A0  38 BD 05 38 */	addi r5, r29, 0x538
/* 805D29A4  4B FF 88 15 */	bl __register_global_object
/* 805D29A8  C0 5E 04 28 */	lfs f2, 0x428(r30)
/* 805D29AC  D0 41 01 38 */	stfs f2, 0x138(r1)
/* 805D29B0  C0 3E 03 AC */	lfs f1, 0x3ac(r30)
/* 805D29B4  D0 21 01 3C */	stfs f1, 0x13c(r1)
/* 805D29B8  C0 1E 01 E8 */	lfs f0, 0x1e8(r30)
/* 805D29BC  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 805D29C0  38 7D 05 50 */	addi r3, r29, 0x550
/* 805D29C4  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 805D29C8  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 805D29CC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805D29D0  38 63 00 18 */	addi r3, r3, 0x18
/* 805D29D4  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D29D8  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D29DC  38 BD 05 44 */	addi r5, r29, 0x544
/* 805D29E0  4B FF 87 D9 */	bl __register_global_object
/* 805D29E4  38 00 00 01 */	li r0, 1
/* 805D29E8  98 1D 05 34 */	stb r0, 0x534(r29)
lbl_805D29EC:
/* 805D29EC  88 1D 05 80 */	lbz r0, 0x580(r29)
/* 805D29F0  7C 00 07 75 */	extsb. r0, r0
/* 805D29F4  40 82 01 AC */	bne lbl_805D2BA0
/* 805D29F8  C0 5E 04 2C */	lfs f2, 0x42c(r30)
/* 805D29FC  D0 41 01 2C */	stfs f2, 0x12c(r1)
/* 805D2A00  C0 3E 04 30 */	lfs f1, 0x430(r30)
/* 805D2A04  D0 21 01 30 */	stfs f1, 0x130(r1)
/* 805D2A08  C0 1E 02 84 */	lfs f0, 0x284(r30)
/* 805D2A0C  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 805D2A10  D0 5D 05 CC */	stfs f2, 0x5cc(r29)
/* 805D2A14  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D2A18  D0 23 00 04 */	stfs f1, 4(r3)
/* 805D2A1C  D0 03 00 08 */	stfs f0, 8(r3)
/* 805D2A20  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2A24  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2A28  38 BD 05 74 */	addi r5, r29, 0x574
/* 805D2A2C  4B FF 87 8D */	bl __register_global_object
/* 805D2A30  C0 5E 04 2C */	lfs f2, 0x42c(r30)
/* 805D2A34  D0 41 01 20 */	stfs f2, 0x120(r1)
/* 805D2A38  C0 3E 04 34 */	lfs f1, 0x434(r30)
/* 805D2A3C  D0 21 01 24 */	stfs f1, 0x124(r1)
/* 805D2A40  C0 1E 04 38 */	lfs f0, 0x438(r30)
/* 805D2A44  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 805D2A48  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D2A4C  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 805D2A50  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 805D2A54  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805D2A58  38 63 00 0C */	addi r3, r3, 0xc
/* 805D2A5C  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2A60  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2A64  38 BD 05 84 */	addi r5, r29, 0x584
/* 805D2A68  4B FF 87 51 */	bl __register_global_object
/* 805D2A6C  C0 5E 03 E8 */	lfs f2, 0x3e8(r30)
/* 805D2A70  D0 41 01 14 */	stfs f2, 0x114(r1)
/* 805D2A74  C0 3E 04 3C */	lfs f1, 0x43c(r30)
/* 805D2A78  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 805D2A7C  C0 1E 04 40 */	lfs f0, 0x440(r30)
/* 805D2A80  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 805D2A84  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D2A88  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 805D2A8C  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 805D2A90  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805D2A94  38 63 00 18 */	addi r3, r3, 0x18
/* 805D2A98  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2A9C  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2AA0  38 BD 05 90 */	addi r5, r29, 0x590
/* 805D2AA4  4B FF 87 15 */	bl __register_global_object
/* 805D2AA8  C0 5E 04 44 */	lfs f2, 0x444(r30)
/* 805D2AAC  D0 41 01 08 */	stfs f2, 0x108(r1)
/* 805D2AB0  C0 3E 04 48 */	lfs f1, 0x448(r30)
/* 805D2AB4  D0 21 01 0C */	stfs f1, 0x10c(r1)
/* 805D2AB8  C0 1E 04 4C */	lfs f0, 0x44c(r30)
/* 805D2ABC  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 805D2AC0  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D2AC4  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 805D2AC8  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 805D2ACC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 805D2AD0  38 63 00 24 */	addi r3, r3, 0x24
/* 805D2AD4  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2AD8  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2ADC  38 BD 05 9C */	addi r5, r29, 0x59c
/* 805D2AE0  4B FF 86 D9 */	bl __register_global_object
/* 805D2AE4  C0 5E 02 44 */	lfs f2, 0x244(r30)
/* 805D2AE8  D0 41 00 FC */	stfs f2, 0xfc(r1)
/* 805D2AEC  C0 3E 04 50 */	lfs f1, 0x450(r30)
/* 805D2AF0  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 805D2AF4  C0 1E 03 68 */	lfs f0, 0x368(r30)
/* 805D2AF8  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 805D2AFC  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D2B00  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 805D2B04  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 805D2B08  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 805D2B0C  38 63 00 30 */	addi r3, r3, 0x30
/* 805D2B10  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2B14  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2B18  38 BD 05 A8 */	addi r5, r29, 0x5a8
/* 805D2B1C  4B FF 86 9D */	bl __register_global_object
/* 805D2B20  C0 5E 04 54 */	lfs f2, 0x454(r30)
/* 805D2B24  D0 41 00 F0 */	stfs f2, 0xf0(r1)
/* 805D2B28  C0 3E 04 24 */	lfs f1, 0x424(r30)
/* 805D2B2C  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 805D2B30  C0 1E 04 58 */	lfs f0, 0x458(r30)
/* 805D2B34  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 805D2B38  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D2B3C  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 805D2B40  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 805D2B44  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 805D2B48  38 63 00 3C */	addi r3, r3, 0x3c
/* 805D2B4C  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2B50  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2B54  38 BD 05 B4 */	addi r5, r29, 0x5b4
/* 805D2B58  4B FF 86 61 */	bl __register_global_object
/* 805D2B5C  C0 5E 04 5C */	lfs f2, 0x45c(r30)
/* 805D2B60  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 805D2B64  C0 3E 04 60 */	lfs f1, 0x460(r30)
/* 805D2B68  D0 21 00 E8 */	stfs f1, 0xe8(r1)
/* 805D2B6C  C0 1E 04 64 */	lfs f0, 0x464(r30)
/* 805D2B70  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 805D2B74  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D2B78  D0 43 00 48 */	stfs f2, 0x48(r3)
/* 805D2B7C  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 805D2B80  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 805D2B84  38 63 00 48 */	addi r3, r3, 0x48
/* 805D2B88  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2B8C  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2B90  38 BD 05 C0 */	addi r5, r29, 0x5c0
/* 805D2B94  4B FF 86 25 */	bl __register_global_object
/* 805D2B98  38 00 00 01 */	li r0, 1
/* 805D2B9C  98 1D 05 80 */	stb r0, 0x580(r29)
lbl_805D2BA0:
/* 805D2BA0  88 1D 06 2C */	lbz r0, 0x62c(r29)
/* 805D2BA4  7C 00 07 75 */	extsb. r0, r0
/* 805D2BA8  40 82 01 AC */	bne lbl_805D2D54
/* 805D2BAC  C0 5E 04 68 */	lfs f2, 0x468(r30)
/* 805D2BB0  D0 41 00 D8 */	stfs f2, 0xd8(r1)
/* 805D2BB4  C0 3E 04 6C */	lfs f1, 0x46c(r30)
/* 805D2BB8  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 805D2BBC  C0 1E 04 70 */	lfs f0, 0x470(r30)
/* 805D2BC0  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 805D2BC4  D0 5D 06 78 */	stfs f2, 0x678(r29)
/* 805D2BC8  38 7D 06 78 */	addi r3, r29, 0x678
/* 805D2BCC  D0 23 00 04 */	stfs f1, 4(r3)
/* 805D2BD0  D0 03 00 08 */	stfs f0, 8(r3)
/* 805D2BD4  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2BD8  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2BDC  38 BD 06 20 */	addi r5, r29, 0x620
/* 805D2BE0  4B FF 85 D9 */	bl __register_global_object
/* 805D2BE4  C0 5E 04 68 */	lfs f2, 0x468(r30)
/* 805D2BE8  D0 41 00 CC */	stfs f2, 0xcc(r1)
/* 805D2BEC  C0 3E 04 74 */	lfs f1, 0x474(r30)
/* 805D2BF0  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 805D2BF4  C0 1E 04 70 */	lfs f0, 0x470(r30)
/* 805D2BF8  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 805D2BFC  38 7D 06 78 */	addi r3, r29, 0x678
/* 805D2C00  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 805D2C04  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 805D2C08  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805D2C0C  38 63 00 0C */	addi r3, r3, 0xc
/* 805D2C10  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2C14  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2C18  38 BD 06 30 */	addi r5, r29, 0x630
/* 805D2C1C  4B FF 85 9D */	bl __register_global_object
/* 805D2C20  C0 5E 04 78 */	lfs f2, 0x478(r30)
/* 805D2C24  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 805D2C28  C0 3E 04 7C */	lfs f1, 0x47c(r30)
/* 805D2C2C  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 805D2C30  C0 1E 04 80 */	lfs f0, 0x480(r30)
/* 805D2C34  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 805D2C38  38 7D 06 78 */	addi r3, r29, 0x678
/* 805D2C3C  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 805D2C40  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 805D2C44  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805D2C48  38 63 00 18 */	addi r3, r3, 0x18
/* 805D2C4C  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2C50  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2C54  38 BD 06 3C */	addi r5, r29, 0x63c
/* 805D2C58  4B FF 85 61 */	bl __register_global_object
/* 805D2C5C  C0 5E 02 44 */	lfs f2, 0x244(r30)
/* 805D2C60  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 805D2C64  C0 3E 04 84 */	lfs f1, 0x484(r30)
/* 805D2C68  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 805D2C6C  C0 1E 04 88 */	lfs f0, 0x488(r30)
/* 805D2C70  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 805D2C74  38 7D 06 78 */	addi r3, r29, 0x678
/* 805D2C78  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 805D2C7C  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 805D2C80  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 805D2C84  38 63 00 24 */	addi r3, r3, 0x24
/* 805D2C88  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2C8C  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2C90  38 BD 06 48 */	addi r5, r29, 0x648
/* 805D2C94  4B FF 85 25 */	bl __register_global_object
/* 805D2C98  C0 5E 01 A0 */	lfs f2, 0x1a0(r30)
/* 805D2C9C  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 805D2CA0  C0 3E 04 8C */	lfs f1, 0x48c(r30)
/* 805D2CA4  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 805D2CA8  C0 1E 01 8C */	lfs f0, 0x18c(r30)
/* 805D2CAC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805D2CB0  38 7D 06 78 */	addi r3, r29, 0x678
/* 805D2CB4  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 805D2CB8  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 805D2CBC  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 805D2CC0  38 63 00 30 */	addi r3, r3, 0x30
/* 805D2CC4  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2CC8  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2CCC  38 BD 06 54 */	addi r5, r29, 0x654
/* 805D2CD0  4B FF 84 E9 */	bl __register_global_object
/* 805D2CD4  C0 5E 02 78 */	lfs f2, 0x278(r30)
/* 805D2CD8  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 805D2CDC  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 805D2CE0  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 805D2CE4  C0 1E 04 90 */	lfs f0, 0x490(r30)
/* 805D2CE8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805D2CEC  38 7D 06 78 */	addi r3, r29, 0x678
/* 805D2CF0  D0 43 00 3C */	stfs f2, 0x3c(r3)
/* 805D2CF4  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 805D2CF8  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 805D2CFC  38 63 00 3C */	addi r3, r3, 0x3c
/* 805D2D00  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2D04  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2D08  38 BD 06 60 */	addi r5, r29, 0x660
/* 805D2D0C  4B FF 84 AD */	bl __register_global_object
/* 805D2D10  C0 5E 04 94 */	lfs f2, 0x494(r30)
/* 805D2D14  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 805D2D18  C0 3E 01 58 */	lfs f1, 0x158(r30)
/* 805D2D1C  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 805D2D20  C0 1E 04 98 */	lfs f0, 0x498(r30)
/* 805D2D24  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 805D2D28  38 7D 06 78 */	addi r3, r29, 0x678
/* 805D2D2C  D0 43 00 48 */	stfs f2, 0x48(r3)
/* 805D2D30  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 805D2D34  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 805D2D38  38 63 00 48 */	addi r3, r3, 0x48
/* 805D2D3C  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha /* 0x805DC968@ha */
/* 805D2D40  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805DC968@l */
/* 805D2D44  38 BD 06 6C */	addi r5, r29, 0x66c
/* 805D2D48  4B FF 84 71 */	bl __register_global_object
/* 805D2D4C  38 00 00 01 */	li r0, 1
/* 805D2D50  98 1D 06 2C */	stb r0, 0x62c(r29)
lbl_805D2D54:
/* 805D2D54  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D2D58  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 805D2D5C  D0 01 01 60 */	stfs f0, 0x160(r1)
/* 805D2D60  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 805D2D64  38 7D 00 4C */	addi r3, r29, 0x4c
/* 805D2D68  A8 03 00 3A */	lha r0, 0x3a(r3)
/* 805D2D6C  90 1F 06 A4 */	stw r0, 0x6a4(r31)
/* 805D2D70  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D2D74  28 00 00 10 */	cmplwi r0, 0x10
/* 805D2D78  41 81 0A D0 */	bgt lbl_805D3848
/* 805D2D7C  3C 60 80 5E */	lis r3, lit_7939@ha /* 0x805DD63C@ha */
/* 805D2D80  38 63 D6 3C */	addi r3, r3, lit_7939@l /* 0x805DD63C@l */
/* 805D2D84  54 00 10 3A */	slwi r0, r0, 2
/* 805D2D88  7C 03 00 2E */	lwzx r0, r3, r0
/* 805D2D8C  7C 09 03 A6 */	mtctr r0
/* 805D2D90  4E 80 04 20 */	bctr 
lbl_805D2D94:
/* 805D2D94  C0 1E 02 30 */	lfs f0, 0x230(r30)
/* 805D2D98  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 805D2D9C  38 00 DE CC */	li r0, -8500
/* 805D2DA0  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 805D2DA4  88 1F 08 51 */	lbz r0, 0x851(r31)
/* 805D2DA8  28 00 00 00 */	cmplwi r0, 0
/* 805D2DAC  41 82 0A 9C */	beq lbl_805D3848
/* 805D2DB0  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D2DB4  38 03 00 01 */	addi r0, r3, 1
/* 805D2DB8  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D2DBC:
/* 805D2DBC  7F E3 FB 78 */	mr r3, r31
/* 805D2DC0  4B FF AB 19 */	bl startDemoCheck__8daB_DS_cFv
/* 805D2DC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D2DC8  41 82 0A 80 */	beq lbl_805D3848
/* 805D2DCC  C0 1D 05 CC */	lfs f0, 0x5cc(r29)
/* 805D2DD0  D0 1F 2D 20 */	stfs f0, 0x2d20(r31)
/* 805D2DD4  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D2DD8  C0 03 00 04 */	lfs f0, 4(r3)
/* 805D2DDC  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D2DE0  C0 03 00 08 */	lfs f0, 8(r3)
/* 805D2DE4  D0 1F 2D 28 */	stfs f0, 0x2d28(r31)
/* 805D2DE8  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 805D2DEC  D0 1F 2D 14 */	stfs f0, 0x2d14(r31)
/* 805D2DF0  38 7D 06 78 */	addi r3, r29, 0x678
/* 805D2DF4  C0 03 00 04 */	lfs f0, 4(r3)
/* 805D2DF8  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D2DFC  C0 03 00 08 */	lfs f0, 8(r3)
/* 805D2E00  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D2E04  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805D2E08  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805D2E0C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D2E10  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805D2E14  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100008A@ha */
/* 805D2E18  38 84 00 8A */	addi r4, r4, 0x008A /* 0x0100008A@l */
/* 805D2E1C  4B CD C6 81 */	bl subBgmStart__8Z2SeqMgrFUl
/* 805D2E20  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D2E24  38 03 00 01 */	addi r0, r3, 1
/* 805D2E28  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D2E2C:
/* 805D2E2C  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 805D2E30  C0 1E 04 9C */	lfs f0, 0x49c(r30)
/* 805D2E34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D2E38  41 80 0A 10 */	blt lbl_805D3848
/* 805D2E3C  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D2E40  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805D2E44  D0 1F 2D 20 */	stfs f0, 0x2d20(r31)
/* 805D2E48  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 805D2E4C  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D2E50  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 805D2E54  D0 1F 2D 28 */	stfs f0, 0x2d28(r31)
/* 805D2E58  38 7D 06 78 */	addi r3, r29, 0x678
/* 805D2E5C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805D2E60  D0 1F 2D 14 */	stfs f0, 0x2d14(r31)
/* 805D2E64  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 805D2E68  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D2E6C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 805D2E70  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D2E74  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D2E78  38 03 00 01 */	addi r0, r3, 1
/* 805D2E7C  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D2E80:
/* 805D2E80  88 1F 08 51 */	lbz r0, 0x851(r31)
/* 805D2E84  28 00 00 00 */	cmplwi r0, 0
/* 805D2E88  40 82 09 C0 */	bne lbl_805D3848
/* 805D2E8C  38 00 00 1E */	li r0, 0x1e
/* 805D2E90  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D2E94  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D2E98  38 03 00 01 */	addi r0, r3, 1
/* 805D2E9C  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D2EA0:
/* 805D2EA0  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D2EA4  48 00 9A 41 */	bl func_805DC8E4
/* 805D2EA8  2C 03 00 00 */	cmpwi r3, 0
/* 805D2EAC  40 82 09 9C */	bne lbl_805D3848
/* 805D2EB0  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D2EB4  38 03 00 01 */	addi r0, r3, 1
/* 805D2EB8  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D2EBC:
/* 805D2EBC  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 805D2EC0  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D2EC4  38 7D 05 50 */	addi r3, r29, 0x550
/* 805D2EC8  C0 03 00 04 */	lfs f0, 4(r3)
/* 805D2ECC  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D2ED0  C0 03 00 08 */	lfs f0, 8(r3)
/* 805D2ED4  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D2ED8  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 805D2EDC  38 00 00 04 */	li r0, 4
/* 805D2EE0  90 03 06 14 */	stw r0, 0x614(r3)
/* 805D2EE4  38 00 00 02 */	li r0, 2
/* 805D2EE8  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805D2EEC  38 00 00 00 */	li r0, 0
/* 805D2EF0  90 03 06 10 */	stw r0, 0x610(r3)
/* 805D2EF4  B0 03 06 0A */	sth r0, 0x60a(r3)
/* 805D2EF8  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 805D2EFC  38 81 01 80 */	addi r4, r1, 0x180
/* 805D2F00  38 A0 05 70 */	li r5, 0x570
/* 805D2F04  38 C0 00 00 */	li r6, 0
/* 805D2F08  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D2F0C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805D2F10  7D 89 03 A6 */	mtctr r12
/* 805D2F14  4E 80 04 21 */	bctrl 
/* 805D2F18  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D2F1C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805D2F20  D0 1F 2D 20 */	stfs f0, 0x2d20(r31)
/* 805D2F24  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805D2F28  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D2F2C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 805D2F30  D0 1F 2D 28 */	stfs f0, 0x2d28(r31)
/* 805D2F34  38 7D 06 78 */	addi r3, r29, 0x678
/* 805D2F38  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805D2F3C  D0 1F 2D 14 */	stfs f0, 0x2d14(r31)
/* 805D2F40  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805D2F44  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D2F48  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 805D2F4C  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D2F50  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D2F54  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 805D2F58  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D2F5C  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 805D2F60  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D2F64  D0 1F 06 CC */	stfs f0, 0x6cc(r31)
/* 805D2F68  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704D3@ha */
/* 805D2F6C  38 03 04 D3 */	addi r0, r3, 0x04D3 /* 0x000704D3@l */
/* 805D2F70  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805D2F74  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D2F78  38 81 00 2C */	addi r4, r1, 0x2c
/* 805D2F7C  38 A0 00 00 */	li r5, 0
/* 805D2F80  38 C0 FF FF */	li r6, -1
/* 805D2F84  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D2F88  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D2F8C  7D 89 03 A6 */	mtctr r12
/* 805D2F90  4E 80 04 21 */	bctrl 
/* 805D2F94  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D2F98  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 805D2F9C  38 00 00 32 */	li r0, 0x32
/* 805D2FA0  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D2FA4  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D2FA8  38 03 00 01 */	addi r0, r3, 1
/* 805D2FAC  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D2FB0:
/* 805D2FB0  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D2FB4  48 00 99 31 */	bl func_805DC8E4
/* 805D2FB8  2C 03 00 00 */	cmpwi r3, 0
/* 805D2FBC  40 82 08 8C */	bne lbl_805D3848
/* 805D2FC0  38 00 00 12 */	li r0, 0x12
/* 805D2FC4  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D2FC8  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 805D2FCC  38 00 00 19 */	li r0, 0x19
/* 805D2FD0  90 03 06 14 */	stw r0, 0x614(r3)
/* 805D2FD4  38 00 00 00 */	li r0, 0
/* 805D2FD8  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805D2FDC  90 03 06 10 */	stw r0, 0x610(r3)
/* 805D2FE0  B0 03 06 0A */	sth r0, 0x60a(r3)
/* 805D2FE4  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D2FE8  38 03 00 01 */	addi r0, r3, 1
/* 805D2FEC  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D2FF0:
/* 805D2FF0  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D2FF4  48 00 98 F1 */	bl func_805DC8E4
/* 805D2FF8  2C 03 00 00 */	cmpwi r3, 0
/* 805D2FFC  40 82 08 4C */	bne lbl_805D3848
/* 805D3000  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D3004  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805D3008  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805D300C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704D4@ha */
/* 805D3010  38 03 04 D4 */	addi r0, r3, 0x04D4 /* 0x000704D4@l */
/* 805D3014  90 01 00 28 */	stw r0, 0x28(r1)
/* 805D3018  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D301C  38 81 00 28 */	addi r4, r1, 0x28
/* 805D3020  38 A0 00 00 */	li r5, 0
/* 805D3024  38 C0 FF FF */	li r6, -1
/* 805D3028  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D302C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805D3030  7D 89 03 A6 */	mtctr r12
/* 805D3034  4E 80 04 21 */	bctrl 
/* 805D3038  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 805D303C  38 00 00 17 */	li r0, 0x17
/* 805D3040  90 03 06 14 */	stw r0, 0x614(r3)
/* 805D3044  38 00 00 01 */	li r0, 1
/* 805D3048  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805D304C  38 00 00 00 */	li r0, 0
/* 805D3050  90 03 06 10 */	stw r0, 0x610(r3)
/* 805D3054  B0 03 06 0A */	sth r0, 0x60a(r3)
/* 805D3058  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 805D305C  38 9D 05 50 */	addi r4, r29, 0x550
/* 805D3060  38 A0 80 00 */	li r5, -32768
/* 805D3064  38 C0 00 00 */	li r6, 0
/* 805D3068  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D306C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805D3070  7D 89 03 A6 */	mtctr r12
/* 805D3074  4E 80 04 21 */	bctrl 
/* 805D3078  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 805D307C  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D3080  38 7D 05 50 */	addi r3, r29, 0x550
/* 805D3084  C0 03 00 04 */	lfs f0, 4(r3)
/* 805D3088  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D308C  C0 03 00 08 */	lfs f0, 8(r3)
/* 805D3090  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D3094  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D3098  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 805D309C  D0 1F 2D 20 */	stfs f0, 0x2d20(r31)
/* 805D30A0  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805D30A4  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D30A8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805D30AC  D0 1F 2D 28 */	stfs f0, 0x2d28(r31)
/* 805D30B0  38 7D 06 78 */	addi r3, r29, 0x678
/* 805D30B4  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 805D30B8  D0 1F 2D 14 */	stfs f0, 0x2d14(r31)
/* 805D30BC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805D30C0  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D30C4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805D30C8  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D30CC  C0 1E 04 A0 */	lfs f0, 0x4a0(r30)
/* 805D30D0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805D30D4  C0 1E 04 A4 */	lfs f0, 0x4a4(r30)
/* 805D30D8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805D30DC  C0 1E 02 4C */	lfs f0, 0x24c(r30)
/* 805D30E0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805D30E4  38 60 00 00 */	li r3, 0
/* 805D30E8  B0 7F 04 E4 */	sth r3, 0x4e4(r31)
/* 805D30EC  38 00 10 00 */	li r0, 0x1000
/* 805D30F0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 805D30F4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805D30F8  B0 7F 04 E8 */	sth r3, 0x4e8(r31)
/* 805D30FC  38 7F 07 E8 */	addi r3, r31, 0x7e8
/* 805D3100  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 805D3104  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 805D3108  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 805D310C  4B C9 C9 31 */	bl cLib_addCalc2__FPffff
/* 805D3110  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 805D3114  38 00 00 17 */	li r0, 0x17
/* 805D3118  90 03 06 14 */	stw r0, 0x614(r3)
/* 805D311C  38 00 00 01 */	li r0, 1
/* 805D3120  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805D3124  38 00 00 02 */	li r0, 2
/* 805D3128  90 03 06 10 */	stw r0, 0x610(r3)
/* 805D312C  38 00 00 00 */	li r0, 0
/* 805D3130  B0 03 06 0A */	sth r0, 0x60a(r3)
/* 805D3134  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D3138  38 03 00 01 */	addi r0, r3, 1
/* 805D313C  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D3140:
/* 805D3140  38 7F 07 E8 */	addi r3, r31, 0x7e8
/* 805D3144  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 805D3148  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 805D314C  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 805D3150  4B C9 C8 ED */	bl cLib_addCalc2__FPffff
/* 805D3154  3B 00 00 00 */	li r24, 0
/* 805D3158  3A E0 00 00 */	li r23, 0
/* 805D315C  3A C0 00 00 */	li r22, 0
/* 805D3160  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D3164  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D3168  3C 60 80 5E */	lis r3, eff_Sand_id@ha /* 0x805DD638@ha */
/* 805D316C  3A 83 D6 38 */	addi r20, r3, eff_Sand_id@l /* 0x805DD638@l */
lbl_805D3170:
/* 805D3170  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 805D3174  38 00 00 FF */	li r0, 0xff
/* 805D3178  90 01 00 08 */	stw r0, 8(r1)
/* 805D317C  38 80 00 00 */	li r4, 0
/* 805D3180  90 81 00 0C */	stw r4, 0xc(r1)
/* 805D3184  38 00 FF FF */	li r0, -1
/* 805D3188  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D318C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805D3190  90 81 00 18 */	stw r4, 0x18(r1)
/* 805D3194  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805D3198  3A B6 2E 0C */	addi r21, r22, 0x2e0c
/* 805D319C  7C 9F A8 2E */	lwzx r4, r31, r21
/* 805D31A0  38 A0 00 00 */	li r5, 0
/* 805D31A4  7C D4 BA 2E */	lhzx r6, r20, r23
/* 805D31A8  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805D31AC  39 00 00 00 */	li r8, 0
/* 805D31B0  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 805D31B4  39 40 00 00 */	li r10, 0
/* 805D31B8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805D31BC  4B A7 A3 11 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805D31C0  7C 7F A9 2E */	stwx r3, r31, r21
/* 805D31C4  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 805D31C8  38 63 02 10 */	addi r3, r3, 0x210
/* 805D31CC  7C 9F A8 2E */	lwzx r4, r31, r21
/* 805D31D0  4B A7 87 49 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805D31D4  7C 75 1B 79 */	or. r21, r3, r3
/* 805D31D8  41 82 00 34 */	beq lbl_805D320C
/* 805D31DC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D31E0  80 63 00 04 */	lwz r3, 4(r3)
/* 805D31E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805D31E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805D31EC  38 95 00 68 */	addi r4, r21, 0x68
/* 805D31F0  38 B5 00 98 */	addi r5, r21, 0x98
/* 805D31F4  38 D5 00 A4 */	addi r6, r21, 0xa4
/* 805D31F8  4B CA D6 11 */	bl func_80280808
/* 805D31FC  C0 35 00 9C */	lfs f1, 0x9c(r21)
/* 805D3200  C0 15 00 98 */	lfs f0, 0x98(r21)
/* 805D3204  D0 15 00 B0 */	stfs f0, 0xb0(r21)
/* 805D3208  D0 35 00 B4 */	stfs f1, 0xb4(r21)
lbl_805D320C:
/* 805D320C  3B 18 00 01 */	addi r24, r24, 1
/* 805D3210  2C 18 00 02 */	cmpwi r24, 2
/* 805D3214  3A F7 00 02 */	addi r23, r23, 2
/* 805D3218  3A D6 00 04 */	addi r22, r22, 4
/* 805D321C  41 80 FF 54 */	blt lbl_805D3170
/* 805D3220  38 61 00 84 */	addi r3, r1, 0x84
/* 805D3224  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805D3228  38 BF 07 00 */	addi r5, r31, 0x700
/* 805D322C  4B C9 39 09 */	bl __mi__4cXyzCFRC3Vec
/* 805D3230  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 805D3234  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D3238  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 805D323C  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D3240  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 805D3244  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D3248  38 61 01 80 */	addi r3, r1, 0x180
/* 805D324C  4B C9 3F 05 */	bl atan2sY_XZ__4cXyzCFv
/* 805D3250  B0 7F 04 DC */	sth r3, 0x4dc(r31)
/* 805D3254  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805D3258  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 805D325C  38 A0 00 14 */	li r5, 0x14
/* 805D3260  38 C0 02 00 */	li r6, 0x200
/* 805D3264  4B C9 D3 A5 */	bl cLib_addCalcAngleS2__FPssss
/* 805D3268  38 7F 07 F8 */	addi r3, r31, 0x7f8
/* 805D326C  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 805D3270  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 805D3274  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 805D3278  4B C9 C7 C5 */	bl cLib_addCalc2__FPffff
/* 805D327C  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 805D3280  C0 3E 04 A8 */	lfs f1, 0x4a8(r30)
/* 805D3284  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 805D3288  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 805D328C  4B C9 C7 B1 */	bl cLib_addCalc2__FPffff
/* 805D3290  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704D4@ha */
/* 805D3294  38 03 04 D4 */	addi r0, r3, 0x04D4 /* 0x000704D4@l */
/* 805D3298  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D329C  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D32A0  38 81 00 24 */	addi r4, r1, 0x24
/* 805D32A4  38 A0 00 00 */	li r5, 0
/* 805D32A8  38 C0 FF FF */	li r6, -1
/* 805D32AC  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D32B0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805D32B4  7D 89 03 A6 */	mtctr r12
/* 805D32B8  4E 80 04 21 */	bctrl 
/* 805D32BC  C0 1F 06 E8 */	lfs f0, 0x6e8(r31)
/* 805D32C0  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 805D32C4  C0 3F 06 EC */	lfs f1, 0x6ec(r31)
/* 805D32C8  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 805D32CC  C0 1F 06 F0 */	lfs f0, 0x6f0(r31)
/* 805D32D0  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D32D4  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 805D32D8  EC 01 00 2A */	fadds f0, f1, f0
/* 805D32DC  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D32E0  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D32E4  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 805D32E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805D32EC  40 80 00 08 */	bge lbl_805D32F4
/* 805D32F0  D0 21 01 78 */	stfs f1, 0x178(r1)
lbl_805D32F4:
/* 805D32F4  C0 21 01 78 */	lfs f1, 0x178(r1)
/* 805D32F8  C0 1F 2D 24 */	lfs f0, 0x2d24(r31)
/* 805D32FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D3300  40 81 00 14 */	ble lbl_805D3314
/* 805D3304  38 7F 2D 24 */	addi r3, r31, 0x2d24
/* 805D3308  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 805D330C  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 805D3310  4B C9 C7 2D */	bl cLib_addCalc2__FPffff
lbl_805D3314:
/* 805D3314  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D3318  C0 3E 04 A8 */	lfs f1, 0x4a8(r30)
/* 805D331C  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D3320  FC 00 02 10 */	fabs f0, f0
/* 805D3324  FC 40 00 18 */	frsp f2, f0
/* 805D3328  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805D332C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805D3330  41 81 05 18 */	bgt lbl_805D3848
/* 805D3334  38 00 00 32 */	li r0, 0x32
/* 805D3338  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D333C  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
/* 805D3340  38 00 00 0A */	li r0, 0xa
/* 805D3344  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D3348:
/* 805D3348  38 61 00 78 */	addi r3, r1, 0x78
/* 805D334C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805D3350  38 BF 07 00 */	addi r5, r31, 0x700
/* 805D3354  4B C9 37 E1 */	bl __mi__4cXyzCFRC3Vec
/* 805D3358  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 805D335C  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D3360  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 805D3364  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D3368  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 805D336C  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D3370  38 61 01 80 */	addi r3, r1, 0x180
/* 805D3374  4B C9 3D DD */	bl atan2sY_XZ__4cXyzCFv
/* 805D3378  B0 7F 04 DC */	sth r3, 0x4dc(r31)
/* 805D337C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805D3380  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 805D3384  38 A0 00 14 */	li r5, 0x14
/* 805D3388  38 C0 02 00 */	li r6, 0x200
/* 805D338C  4B C9 D2 7D */	bl cLib_addCalcAngleS2__FPssss
/* 805D3390  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D3394  48 00 95 51 */	bl func_805DC8E4
/* 805D3398  2C 03 00 00 */	cmpwi r3, 0
/* 805D339C  40 82 04 AC */	bne lbl_805D3848
/* 805D33A0  38 7D 05 50 */	addi r3, r29, 0x550
/* 805D33A4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805D33A8  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D33AC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 805D33B0  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D33B4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 805D33B8  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D33BC  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 805D33C0  38 81 01 80 */	addi r4, r1, 0x180
/* 805D33C4  38 A0 99 B6 */	li r5, -26186
/* 805D33C8  38 C0 00 00 */	li r6, 0
/* 805D33CC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D33D0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805D33D4  7D 89 03 A6 */	mtctr r12
/* 805D33D8  4E 80 04 21 */	bctrl 
/* 805D33DC  38 00 00 1E */	li r0, 0x1e
/* 805D33E0  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D33E4  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D33E8  38 03 00 01 */	addi r0, r3, 1
/* 805D33EC  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D33F0:
/* 805D33F0  C0 1E 04 A4 */	lfs f0, 0x4a4(r30)
/* 805D33F4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805D33F8  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 805D33FC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805D3400  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D3404  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805D3408  D0 1F 2D 20 */	stfs f0, 0x2d20(r31)
/* 805D340C  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 805D3410  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D3414  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 805D3418  D0 1F 2D 28 */	stfs f0, 0x2d28(r31)
/* 805D341C  38 7D 06 78 */	addi r3, r29, 0x678
/* 805D3420  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805D3424  D0 1F 2D 14 */	stfs f0, 0x2d14(r31)
/* 805D3428  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 805D342C  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D3430  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 805D3434  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D3438  38 61 00 6C */	addi r3, r1, 0x6c
/* 805D343C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 805D3440  38 BF 07 00 */	addi r5, r31, 0x700
/* 805D3444  4B C9 36 F1 */	bl __mi__4cXyzCFRC3Vec
/* 805D3448  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 805D344C  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D3450  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 805D3454  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D3458  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 805D345C  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D3460  38 61 01 80 */	addi r3, r1, 0x180
/* 805D3464  4B C9 3C ED */	bl atan2sY_XZ__4cXyzCFv
/* 805D3468  B0 7F 04 DC */	sth r3, 0x4dc(r31)
/* 805D346C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805D3470  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 805D3474  38 A0 00 14 */	li r5, 0x14
/* 805D3478  38 C0 02 00 */	li r6, 0x200
/* 805D347C  4B C9 D1 8D */	bl cLib_addCalcAngleS2__FPssss
/* 805D3480  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D3484  48 00 94 61 */	bl func_805DC8E4
/* 805D3488  2C 03 00 00 */	cmpwi r3, 0
/* 805D348C  40 82 03 BC */	bne lbl_805D3848
/* 805D3490  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D3494  D0 1F 06 F4 */	stfs f0, 0x6f4(r31)
/* 805D3498  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D349C  D0 1F 06 F8 */	stfs f0, 0x6f8(r31)
/* 805D34A0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D34A4  D0 1F 06 FC */	stfs f0, 0x6fc(r31)
/* 805D34A8  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 805D34AC  38 00 00 19 */	li r0, 0x19
/* 805D34B0  90 03 06 14 */	stw r0, 0x614(r3)
/* 805D34B4  38 00 00 00 */	li r0, 0
/* 805D34B8  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805D34BC  90 03 06 10 */	stw r0, 0x610(r3)
/* 805D34C0  B0 03 06 0A */	sth r0, 0x60a(r3)
/* 805D34C4  38 00 00 1E */	li r0, 0x1e
/* 805D34C8  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D34CC  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D34D0  38 03 00 01 */	addi r0, r3, 1
/* 805D34D4  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D34D8  48 00 03 70 */	b lbl_805D3848
lbl_805D34DC:
/* 805D34DC  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D34E0  48 00 94 05 */	bl func_805DC8E4
/* 805D34E4  2C 03 00 00 */	cmpwi r3, 0
/* 805D34E8  40 82 03 60 */	bne lbl_805D3848
/* 805D34EC  38 00 00 1E */	li r0, 0x1e
/* 805D34F0  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D34F4  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 805D34F8  38 00 00 17 */	li r0, 0x17
/* 805D34FC  90 03 06 14 */	stw r0, 0x614(r3)
/* 805D3500  38 00 00 01 */	li r0, 1
/* 805D3504  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805D3508  38 00 00 02 */	li r0, 2
/* 805D350C  90 03 06 10 */	stw r0, 0x610(r3)
/* 805D3510  38 00 00 00 */	li r0, 0
/* 805D3514  B0 03 06 0A */	sth r0, 0x60a(r3)
/* 805D3518  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D351C  38 03 00 01 */	addi r0, r3, 1
/* 805D3520  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D3524:
/* 805D3524  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D3528  48 00 93 BD */	bl func_805DC8E4
/* 805D352C  2C 03 00 00 */	cmpwi r3, 0
/* 805D3530  40 82 03 18 */	bne lbl_805D3848
/* 805D3534  7F E3 FB 78 */	mr r3, r31
/* 805D3538  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 805D353C  4B A4 71 D5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805D3540  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 805D3544  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 805D3548  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D354C  D0 1F 07 90 */	stfs f0, 0x790(r31)
/* 805D3550  D0 1F 07 94 */	stfs f0, 0x794(r31)
/* 805D3554  D0 1F 07 98 */	stfs f0, 0x798(r31)
/* 805D3558  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D355C  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 805D3560  D0 1F 2D 20 */	stfs f0, 0x2d20(r31)
/* 805D3564  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 805D3568  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D356C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 805D3570  D0 1F 2D 28 */	stfs f0, 0x2d28(r31)
/* 805D3574  38 7D 06 78 */	addi r3, r29, 0x678
/* 805D3578  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 805D357C  D0 1F 2D 14 */	stfs f0, 0x2d14(r31)
/* 805D3580  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 805D3584  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D3588  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 805D358C  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D3590  38 00 00 1E */	li r0, 0x1e
/* 805D3594  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D3598  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D359C  38 03 00 01 */	addi r0, r3, 1
/* 805D35A0  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D35A4:
/* 805D35A4  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D35A8  48 00 93 3D */	bl func_805DC8E4
/* 805D35AC  2C 03 00 00 */	cmpwi r3, 0
/* 805D35B0  40 82 02 98 */	bne lbl_805D3848
/* 805D35B4  7F E3 FB 78 */	mr r3, r31
/* 805D35B8  38 80 00 29 */	li r4, 0x29
/* 805D35BC  38 A0 00 00 */	li r5, 0
/* 805D35C0  C0 3E 03 B8 */	lfs f1, 0x3b8(r30)
/* 805D35C4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D35C8  4B FF 85 01 */	bl setBck__8daB_DS_cFiUcff
/* 805D35CC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 805D35D0  D0 1F 07 18 */	stfs f0, 0x718(r31)
/* 805D35D4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805D35D8  D0 1F 07 1C */	stfs f0, 0x71c(r31)
/* 805D35DC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 805D35E0  D0 1F 07 20 */	stfs f0, 0x720(r31)
/* 805D35E4  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D35E8  38 03 00 01 */	addi r0, r3, 1
/* 805D35EC  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D35F0:
/* 805D35F0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805D35F4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805D35F8  FC 00 00 1E */	fctiwz f0, f0
/* 805D35FC  D8 01 01 90 */	stfd f0, 0x190(r1)
/* 805D3600  80 01 01 94 */	lwz r0, 0x194(r1)
/* 805D3604  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805D3608  41 80 02 40 */	blt lbl_805D3848
/* 805D360C  38 63 00 0C */	addi r3, r3, 0xc
/* 805D3610  C0 3E 04 B4 */	lfs f1, 0x4b4(r30)
/* 805D3614  4B D5 4E 19 */	bl checkPass__12J3DFrameCtrlFf
/* 805D3618  2C 03 00 00 */	cmpwi r3, 0
/* 805D361C  41 82 00 2C */	beq lbl_805D3648
/* 805D3620  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704D9@ha */
/* 805D3624  38 03 04 D9 */	addi r0, r3, 0x04D9 /* 0x000704D9@l */
/* 805D3628  90 01 00 20 */	stw r0, 0x20(r1)
/* 805D362C  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D3630  38 81 00 20 */	addi r4, r1, 0x20
/* 805D3634  38 A0 FF FF */	li r5, -1
/* 805D3638  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D363C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D3640  7D 89 03 A6 */	mtctr r12
/* 805D3644  4E 80 04 21 */	bctrl 
lbl_805D3648:
/* 805D3648  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 805D364C  38 00 00 09 */	li r0, 9
/* 805D3650  90 03 06 14 */	stw r0, 0x614(r3)
/* 805D3654  38 00 00 01 */	li r0, 1
/* 805D3658  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805D365C  38 00 00 00 */	li r0, 0
/* 805D3660  90 03 06 10 */	stw r0, 0x610(r3)
/* 805D3664  B0 03 06 0A */	sth r0, 0x60a(r3)
/* 805D3668  C0 1E 02 30 */	lfs f0, 0x230(r30)
/* 805D366C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805D3670  4B BA DF D1 */	bl dCam_getBody__Fv
/* 805D3674  38 80 00 28 */	li r4, 0x28
/* 805D3678  7F E5 FB 78 */	mr r5, r31
/* 805D367C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805D3680  C0 5E 02 DC */	lfs f2, 0x2dc(r30)
/* 805D3684  4B BA DA ED */	bl StartBlure__9dCamera_cFiP10fopAc_ac_cff
/* 805D3688  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D368C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 805D3690  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D3694  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805D3698  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 805D369C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D36A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D36A4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D36A8  38 80 00 06 */	li r4, 6
/* 805D36AC  38 A0 00 1F */	li r5, 0x1f
/* 805D36B0  38 C1 00 60 */	addi r6, r1, 0x60
/* 805D36B4  4B A9 C3 71 */	bl StartShock__12dVibration_cFii4cXyz
/* 805D36B8  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 805D36BC  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 805D36C0  D0 1F 2D 20 */	stfs f0, 0x2d20(r31)
/* 805D36C4  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 805D36C8  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D36CC  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 805D36D0  D0 1F 2D 28 */	stfs f0, 0x2d28(r31)
/* 805D36D4  38 7D 06 78 */	addi r3, r29, 0x678
/* 805D36D8  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 805D36DC  D0 1F 2D 14 */	stfs f0, 0x2d14(r31)
/* 805D36E0  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 805D36E4  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D36E8  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 805D36EC  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D36F0  38 00 00 32 */	li r0, 0x32
/* 805D36F4  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D36F8  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D36FC  38 03 00 01 */	addi r0, r3, 1
/* 805D3700  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D3704:
/* 805D3704  38 7F 05 2C */	addi r3, r31, 0x52c
/* 805D3708  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 805D370C  C0 5E 01 90 */	lfs f2, 0x190(r30)
/* 805D3710  4B C9 C3 71 */	bl cLib_addCalc0__FPfff
/* 805D3714  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D3718  48 00 91 CD */	bl func_805DC8E4
/* 805D371C  2C 03 00 00 */	cmpwi r3, 0
/* 805D3720  41 82 00 A0 */	beq lbl_805D37C0
/* 805D3724  80 1F 08 1C */	lwz r0, 0x81c(r31)
/* 805D3728  2C 00 00 14 */	cmpwi r0, 0x14
/* 805D372C  40 82 01 1C */	bne lbl_805D3848
/* 805D3730  C0 BE 04 B8 */	lfs f5, 0x4b8(r30)
/* 805D3734  D0 A1 01 74 */	stfs f5, 0x174(r1)
/* 805D3738  C0 9E 04 BC */	lfs f4, 0x4bc(r30)
/* 805D373C  D0 81 01 78 */	stfs f4, 0x178(r1)
/* 805D3740  C0 7E 04 C0 */	lfs f3, 0x4c0(r30)
/* 805D3744  D0 61 01 7C */	stfs f3, 0x17c(r1)
/* 805D3748  C0 5E 04 C4 */	lfs f2, 0x4c4(r30)
/* 805D374C  D0 41 01 68 */	stfs f2, 0x168(r1)
/* 805D3750  C0 3E 04 C8 */	lfs f1, 0x4c8(r30)
/* 805D3754  D0 21 01 6C */	stfs f1, 0x16c(r1)
/* 805D3758  C0 1E 04 CC */	lfs f0, 0x4cc(r30)
/* 805D375C  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 805D3760  D0 A1 00 54 */	stfs f5, 0x54(r1)
/* 805D3764  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 805D3768  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 805D376C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 805D3770  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 805D3774  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805D3778  38 7A 02 48 */	addi r3, r26, 0x248
/* 805D377C  38 81 00 54 */	addi r4, r1, 0x54
/* 805D3780  38 A1 00 48 */	addi r5, r1, 0x48
/* 805D3784  4B BA D4 95 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 805D3788  38 7A 02 48 */	addi r3, r26, 0x248
/* 805D378C  4B B8 DD 21 */	bl Start__9dCamera_cFv
/* 805D3790  38 7A 02 48 */	addi r3, r26, 0x248
/* 805D3794  38 80 00 00 */	li r4, 0
/* 805D3798  4B B8 F8 75 */	bl SetTrimSize__9dCamera_cFl
/* 805D379C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D37A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D37A4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805D37A8  4B A6 EC C1 */	bl reset__14dEvt_control_cFv
/* 805D37AC  38 60 00 06 */	li r3, 6
/* 805D37B0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D37B4  7C 04 07 74 */	extsb r4, r0
/* 805D37B8  4B A5 A2 E5 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 805D37BC  48 00 00 8C */	b lbl_805D3848
lbl_805D37C0:
/* 805D37C0  C0 1E 04 B8 */	lfs f0, 0x4b8(r30)
/* 805D37C4  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D37C8  C0 1E 03 DC */	lfs f0, 0x3dc(r30)
/* 805D37CC  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D37D0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D37D4  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D37D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D37DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D37E0  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 805D37E4  38 81 01 80 */	addi r4, r1, 0x180
/* 805D37E8  38 A0 99 B6 */	li r5, -26186
/* 805D37EC  38 C0 00 32 */	li r6, 0x32
/* 805D37F0  4B A6 17 91 */	bl setRoom__13dSv_restart_cFRC4cXyzsSc
/* 805D37F4  38 00 00 00 */	li r0, 0
/* 805D37F8  98 1F 05 46 */	stb r0, 0x546(r31)
/* 805D37FC  38 00 00 04 */	li r0, 4
/* 805D3800  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 805D3804  38 00 00 02 */	li r0, 2
/* 805D3808  98 1F 04 96 */	stb r0, 0x496(r31)
/* 805D380C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805D3810  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805D3814  80 63 00 00 */	lwz r3, 0(r3)
/* 805D3818  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805D381C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100008C@ha */
/* 805D3820  38 84 00 8C */	addi r4, r4, 0x008C /* 0x0100008C@l */
/* 805D3824  38 A0 00 00 */	li r5, 0
/* 805D3828  38 C0 00 00 */	li r6, 0
/* 805D382C  4B CD B7 E5 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 805D3830  7F E3 FB 78 */	mr r3, r31
/* 805D3834  48 00 06 6D */	bl mSetFirstPos__8daB_DS_cFv
/* 805D3838  7F E3 FB 78 */	mr r3, r31
/* 805D383C  38 80 00 01 */	li r4, 1
/* 805D3840  38 A0 00 00 */	li r5, 0
/* 805D3844  4B FF 83 31 */	bl setActionMode__8daB_DS_cFii
lbl_805D3848:
/* 805D3848  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D384C  2C 00 00 06 */	cmpwi r0, 6
/* 805D3850  40 81 00 2C */	ble lbl_805D387C
/* 805D3854  38 7F 07 FC */	addi r3, r31, 0x7fc
/* 805D3858  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805D385C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805D3860  FC 60 10 90 */	fmr f3, f2
/* 805D3864  C0 9E 02 E4 */	lfs f4, 0x2e4(r30)
/* 805D3868  4B C9 C1 15 */	bl cLib_addCalc__FPfffff
/* 805D386C  38 60 00 03 */	li r3, 3
/* 805D3870  38 80 00 02 */	li r4, 2
/* 805D3874  C0 3F 07 FC */	lfs f1, 0x7fc(r31)
/* 805D3878  4B BD 4F 95 */	bl dKy_custom_colset__FUcUcf
lbl_805D387C:
/* 805D387C  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D3880  2C 00 00 0A */	cmpwi r0, 0xa
/* 805D3884  41 80 00 18 */	blt lbl_805D389C
/* 805D3888  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D388C  D0 1F 07 34 */	stfs f0, 0x734(r31)
/* 805D3890  7F E3 FB 78 */	mr r3, r31
/* 805D3894  38 80 00 00 */	li r4, 0
/* 805D3898  48 00 01 0D */	bl mFuwafuwaSet__8daB_DS_cFb
lbl_805D389C:
/* 805D389C  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D38A0  2C 00 00 02 */	cmpwi r0, 2
/* 805D38A4  41 80 00 44 */	blt lbl_805D38E8
/* 805D38A8  C0 1F 2D 20 */	lfs f0, 0x2d20(r31)
/* 805D38AC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805D38B0  C0 1F 2D 24 */	lfs f0, 0x2d24(r31)
/* 805D38B4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805D38B8  C0 1F 2D 28 */	lfs f0, 0x2d28(r31)
/* 805D38BC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805D38C0  C0 1F 2D 14 */	lfs f0, 0x2d14(r31)
/* 805D38C4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805D38C8  C0 1F 2D 18 */	lfs f0, 0x2d18(r31)
/* 805D38CC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805D38D0  C0 1F 2D 1C */	lfs f0, 0x2d1c(r31)
/* 805D38D4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805D38D8  38 7A 02 48 */	addi r3, r26, 0x248
/* 805D38DC  38 81 00 3C */	addi r4, r1, 0x3c
/* 805D38E0  38 A1 00 30 */	addi r5, r1, 0x30
/* 805D38E4  4B BA D1 C5 */	bl Set__9dCamera_cF4cXyz4cXyz
lbl_805D38E8:
/* 805D38E8  39 61 01 D0 */	addi r11, r1, 0x1d0
/* 805D38EC  4B D8 E9 19 */	bl _restgpr_20
/* 805D38F0  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 805D38F4  7C 08 03 A6 */	mtlr r0
/* 805D38F8  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 805D38FC  4E 80 00 20 */	blr 
