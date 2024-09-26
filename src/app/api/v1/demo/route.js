import {NextResponse} from "next/server";
import {PrismaClient} from "@prisma/client";

export async function GET(req, res) {
    BigInt.prototype.toJSON = function() { return this.toString() }
    const prisma = new PrismaClient();
    // Insert one
    /*await prisma.brands.create(
        {
            data: {
                brandName: "Brand 1",
                BrandImg: "Something.png"
            }
        }
    );

    return NextResponse.json({status: "Success"});*/
    // Insert many
    /*await prisma.brands.createMany({
        data: [
            {
                brandName: "Brand 1",
                BrandImg: "Something1.png"
            },
            {
                brandName: "Brand 2",
                BrandImg: "Something2.png"
            },
            {
                brandName: "Brand 3",
                BrandImg: "Something3.png"
            }
        ]
    });

    return NextResponse.json({status: "Many Success"});*/

    // Update one
    /*await prisma.brands.update({
        data: {
            brandName: "Brand 1 Updated",
            BrandImg: "SomethingUpdated.png"
        },
        where: {
            id: 1
        }
    });

    return NextResponse.json({status: "Updated Success"});*/

    // Update many
    /*await prisma.brands.updateMany({
        data: {
            brandName: "Brand 1 Updated Many",
            BrandImg: "SomethingUpdatedMany.png"
        },
        where: {
            id: {
                in: [2, 3, 5]
            }
        }
    });

    return NextResponse.json({status: "Updated Many Success"});*/

    // Delete one
    /*await prisma.brands.delete({
        where: {
            id: 8
        }
    });

    return NextResponse.json({status: "Deleted Success"});*/

    // Delete many
    /*await prisma.brands.deleteMany({
        where: {
            id: {
                in: [6, 7]
            }
        }
    });

    return NextResponse.json({status: "Deleted Many Success"});*/

    // Find one
    const brand = await prisma.brands.findUnique({
        where: {
            id: 1
        }
    });

    return NextResponse.json({status: "Success", data: brand});
    // Relational Insert
}